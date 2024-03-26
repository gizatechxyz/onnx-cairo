use orion::operators::tensor::core::{Tensor, TensorTrait};

/// Cf: TensorTrait::flatten docstring
fn flatten<T, impl TTensorTrait: TensorTrait<T>>(self: @Tensor<T>, axis: usize) -> Tensor<T> {
    let mut shape = *self.shape;
    assert(axis < shape.len(), 'axis out of dimensions');

    let mut new_shape_first_axis = 1;
    let mut index = 0;
    loop {
        match shape.pop_front() {
            Option::Some(val) => {
                if index == axis {
                    break;
                }

                new_shape_first_axis *= *val;
                index += 1;
            },
            Option::None => { break; }
        };
    };

    let new_shape_second_axis = (*self.data).len() / new_shape_first_axis;

    self
        .reshape(
            array![
                new_shape_first_axis.try_into().unwrap(), new_shape_second_axis.try_into().unwrap()
            ]
                .span(),
            false
        )
}
