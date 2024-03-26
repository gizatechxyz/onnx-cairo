use core::option::OptionTrait;
use core::traits::TryInto;
use orion::operators::tensor::{core::{Tensor, TensorTrait, ravel_index, unravel_index}, I32Tensor};
use orion::operators::tensor::helpers::{reduce_output_shape, len_from_shape, combine_indices};
use orion::numbers::NumberTrait;

/// Cf: TensorTrait::argmax docstring
fn argmax<
    T,
    MAG,
    impl TNumber: NumberTrait<T, MAG>,
    impl TPartialOrd: PartialOrd<T>,
    impl TPartialEq: PartialEq<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
>(
    self: @Tensor<T>, axis: i32, keepdims: Option<bool>, select_last_index: Option<bool>
) -> Tensor<i32> {
    let keepdims = keepdims.unwrap_or(true);
    let select_last_index = select_last_index.unwrap_or(false);

    // Convert negative axis to positive
    let axis = if axis < 0 {
        ((*self.shape).len().try_into().unwrap() + axis).try_into().unwrap()
    } else {
        axis.try_into().unwrap()
    };

    assert(axis <= (*self.shape).len(), 'axis out of dimensions');

    if (*self.shape).len() == 1 {
        return find_argmax_1D::<T>(*self, axis, true, select_last_index);
    }

    let mut output_data: Array<i32> = array![];

    let output_shape = reduce_output_shape(*self.shape, axis, false);
    let output_data_len = len_from_shape(output_shape);

    let MIN = NumberTrait::min_value();

    let mut index: usize = 0;
    while index != output_data_len {
        let output_indices = unravel_index(index, output_shape);
        let current_argmax = find_argmax(self, output_indices, axis, 0, MIN, 0, select_last_index);

        output_data.append(current_argmax);

        index += 1;
    };

    TensorTrait::<i32>::new(reduce_output_shape(*self.shape, axis, keepdims), output_data.span())
}

/// Helper function that finds the index of the maximum value in a flat tensor.
///
/// # Arguments
/// * `input` - The input tensor.
/// * `axis` - The axis along which to find the maximum value.
/// * `keepdims` - Whether to keep the reduced dimension or not.
/// * `select_last_index` - Whether to selƒect last occurrence of the max value along the axis.
///
/// # Panics
/// * Panics if gas limit is exceeded during execution.
///
/// # Returns
/// * A usize value representing the index of the maximum value along the specified axis.
fn find_argmax_1D<
    T,
    impl TPartialOrd: PartialOrd<T>,
    impl TPartialEq: PartialEq<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
>(
    mut input: Tensor<T>, axis: usize, keepdims: bool, select_last_index: bool
) -> Tensor<i32> {
    let mut output_data = ArrayTrait::<i32>::new();

    let mut max = match input.data.pop_front() {
        Option::Some(item) => *item,
        Option::None => {
            return TensorTrait::<
                i32
            >::new(reduce_output_shape(input.shape, axis, keepdims), output_data.span());
        }
    };
    let mut max_index = 0;
    let mut count = 0;

    loop {
        match input.data.pop_front() {
            Option::Some(item) => {
                count += 1;

                if *item > max {
                    max = *item;
                    max_index = count;
                } else {
                    if select_last_index && item == @max {
                        max_index = count;
                    }
                };
            },
            Option::None => { break; }
        };
    };

    output_data.append(max_index);

    return TensorTrait::<
        i32
    >::new(reduce_output_shape(input.shape, axis, keepdims), output_data.span());
}


/// Recursive helper function that finds the index of the maximum value along a specific axis.
///
/// # Arguments
/// * `input` - The input tensor.
/// * `output_indices` - A span of output indices.
/// * `axis` - The axis along which to find the maximum value.
/// * `axis_index` - The current index along the specified axis.
/// * `max_value` - The current maximum value found along the axis.
/// * `argmax` - The current index of the maximum value along the axis.
/// * `select_last_index` - Whether to select last occurrence of the max value along the axis.
///
/// # Panics
/// * Panics if gas limit is exceeded during execution.
///
/// # Returns
/// * A usize value representing the index of the maximum value along the specified axis.
fn find_argmax<
    T,
    impl TPartialOrd: PartialOrd<T>,
    impl TPartialEq: PartialEq<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
>(
    input: @Tensor<T>,
    output_indices: Span<usize>,
    axis: usize,
    axis_index: usize,
    max_value: T,
    argmax: usize,
    select_last_index: bool
) -> i32 {
    if axis_index == *(*input.shape)[axis] {
        return argmax.try_into().unwrap();
    }

    let input_indices = combine_indices(output_indices, axis_index, axis);
    let input_index = ravel_index(*input.shape, input_indices);
    let ele = *(*input.data)[input_index];

    let (new_max_value, new_argmax) = if ele > max_value {
        (ele, axis_index)
    } else {
        if select_last_index && ele == max_value {
            (ele, axis_index)
        } else {
            (max_value, argmax)
        }
    };

    return find_argmax(
        input,
        output_indices,
        axis,
        axis_index + 1_usize,
        new_max_value,
        new_argmax,
        select_last_index
    );
}
