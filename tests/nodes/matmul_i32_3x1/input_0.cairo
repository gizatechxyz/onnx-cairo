use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{I32Tensor, I32TensorAdd};
use orion::numbers::NumberTrait;

fn input_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(1);

    let mut data = ArrayTrait::new();
    data.append(17);
    data.append(-36);
    data.append(-51);
    TensorTrait::new(shape.span(), data.span())
}