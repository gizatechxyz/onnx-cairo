use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{U32Tensor, U32TensorAdd};
use orion::numbers::NumberTrait;

fn output_0() -> Tensor<u32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(4);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(5);
    data.append(3);
    data.append(5);
    data.append(3);
    data.append(5);
    data.append(3);
    data.append(5);
    data.append(3);
    TensorTrait::new(shape.span(), data.span())
}
