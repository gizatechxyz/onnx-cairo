use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::numbers::{FixedTrait, FP16x16};

fn input_1() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(6);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 262144, sign: true });
    data.append(FP16x16 { mag: 262144, sign: true });
    data.append(FP16x16 { mag: 65536, sign: true });
    data.append(FP16x16 { mag: 589824, sign: true });
    data.append(FP16x16 { mag: 655360, sign: true });
    data.append(FP16x16 { mag: 327680, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
