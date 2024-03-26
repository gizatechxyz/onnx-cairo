use core::debug::PrintTrait;

use orion::numbers::NumberTrait;
use orion::numbers::fixed_point::core::FixedTrait;
use orion::operators::tensor::core::{Tensor, TensorTrait, ravel_index, unravel_index};

fn square<
    T,
    MAG,
    impl TTensorTrait: TensorTrait<T>,
    impl TNumber: NumberTrait<T, MAG>,
    impl TMul: Mul<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
>(
    self: @Tensor<T>
) -> Tensor<T> {
    let mut data = *self.data;
    let mut output_data = array![];

    loop {
        match data.pop_front() {
            Option::Some(item) => {
                let ele = *item;
                output_data.append(ele * ele);
            },
            Option::None => { break; }
        };
    };

    let tensor_square = TensorTrait::new(*self.shape, output_data.span());

    tensor_square
}

/// Cf: TensorTrait::reduce_l2 docstring
fn reduce_l2<
    T,
    MAG,
    impl TTensor: TensorTrait<T>,
    impl TNumber: NumberTrait<T, MAG>,
    impl TMul: Mul<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
>(
    self: @Tensor<T>, axis: usize, keepdims: bool
) -> Tensor<T> {
    let tensor_square = square(self);
    let tensor_square_sum = tensor_square
        .reduce_sum(
            Option::Some(array![axis.try_into().unwrap()].span()),
            Option::Some(keepdims),
            Option::Some(false)
        );

    tensor_square_sum.sqrt()
}

fn reduce_l2_complex<
    T,
    MAG,
    impl TTensor: TensorTrait<T>,
    impl TNumber: NumberTrait<T, MAG>,
    impl TMul: Mul<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
    impl TPrint: PrintTrait<T>
>(
    self: @Tensor<T>, axis: usize, keepdims: bool
) -> Tensor<T> {
    let mut tensor_square = square(@self.abs());
    let mut tensor_square_sum = tensor_square
        .reduce_sum(
            Option::Some(array![axis.try_into().unwrap()].span()),
            Option::Some(keepdims),
            Option::Some(false)
        );

    tensor_square_sum.sqrt()
}

