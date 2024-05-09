use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::numbers::{FixedTrait, FP16x16};

fn input_1() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(6);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 503603, sign: true });
    data.append(FP16x16 { mag: 645885, sign: false });
    data.append(FP16x16 { mag: 524387, sign: true });
    data.append(FP16x16 { mag: 198739, sign: true });
    data.append(FP16x16 { mag: 470544, sign: false });
    data.append(FP16x16 { mag: 117678, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
