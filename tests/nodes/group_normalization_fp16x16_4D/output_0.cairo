use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::numbers::{FixedTrait, FP16x16};

fn output_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(4);
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 117668, sign: false });
    data.append(FP16x16 { mag: 89135, sign: true });
    data.append(FP16x16 { mag: 89190, sign: true });
    data.append(FP16x16 { mag: 12183, sign: false });
    data.append(FP16x16 { mag: 18406, sign: true });
    data.append(FP16x16 { mag: 16880, sign: false });
    data.append(FP16x16 { mag: 28185, sign: false });
    data.append(FP16x16 { mag: 8605, sign: true });
    data.append(FP16x16 { mag: 7825, sign: false });
    data.append(FP16x16 { mag: 87725, sign: true });
    data.append(FP16x16 { mag: 5586, sign: true });
    data.append(FP16x16 { mag: 51639, sign: false });
    data.append(FP16x16 { mag: 28545, sign: true });
    data.append(FP16x16 { mag: 51786, sign: true });
    data.append(FP16x16 { mag: 49726, sign: true });
    data.append(FP16x16 { mag: 37759, sign: true });
    data.append(FP16x16 { mag: 9356, sign: true });
    data.append(FP16x16 { mag: 51183, sign: true });
    data.append(FP16x16 { mag: 103292, sign: false });
    data.append(FP16x16 { mag: 149439, sign: true });
    data.append(FP16x16 { mag: 12011, sign: false });
    data.append(FP16x16 { mag: 28483, sign: false });
    data.append(FP16x16 { mag: 19432, sign: false });
    data.append(FP16x16 { mag: 25489, sign: true });
    data.append(FP16x16 { mag: 1776, sign: false });
    data.append(FP16x16 { mag: 61030, sign: true });
    data.append(FP16x16 { mag: 5818, sign: true });
    data.append(FP16x16 { mag: 20689, sign: true });
    data.append(FP16x16 { mag: 58789, sign: true });
    data.append(FP16x16 { mag: 35245, sign: true });
    data.append(FP16x16 { mag: 35886, sign: true });
    data.append(FP16x16 { mag: 46209, sign: true });
    data.append(FP16x16 { mag: 68847, sign: false });
    data.append(FP16x16 { mag: 48427, sign: false });
    data.append(FP16x16 { mag: 32996, sign: true });
    data.append(FP16x16 { mag: 80669, sign: true });
    data.append(FP16x16 { mag: 17589, sign: true });
    data.append(FP16x16 { mag: 5180, sign: true });
    data.append(FP16x16 { mag: 37244, sign: false });
    data.append(FP16x16 { mag: 11077, sign: true });
    data.append(FP16x16 { mag: 15689, sign: false });
    data.append(FP16x16 { mag: 163356, sign: false });
    data.append(FP16x16 { mag: 6032, sign: false });
    data.append(FP16x16 { mag: 52254, sign: false });
    data.append(FP16x16 { mag: 38298, sign: true });
    data.append(FP16x16 { mag: 30914, sign: true });
    data.append(FP16x16 { mag: 26817, sign: true });
    data.append(FP16x16 { mag: 28361, sign: true });
    TensorTrait::new(shape.span(), data.span())
}