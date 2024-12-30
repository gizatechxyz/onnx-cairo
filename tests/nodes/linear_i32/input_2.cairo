use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{I32Tensor, I32TensorDiv};

fn input_2() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(-3);
    data.append(-3);
    TensorTrait::new(shape.span(), data.span())
}