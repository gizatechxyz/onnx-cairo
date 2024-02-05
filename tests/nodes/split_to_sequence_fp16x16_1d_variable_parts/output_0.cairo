use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::numbers::{FixedTrait, FP16x16};

fn output_0() -> Array<Tensor<FP16x16>> {
    let mut sequence = ArrayTrait::new();

    let mut shape = ArrayTrait::<usize>::new();
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 262144, sign: true });
    data.append(FP16x16 { mag: 2424832, sign: true });
    data.append(FP16x16 { mag: 851968, sign: true });
    data.append(FP16x16 { mag: 3538944, sign: true });
    data.append(FP16x16 { mag: 7864320, sign: false });

    sequence.append(TensorTrait::new(shape.span(), data.span()));

    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 131072, sign: true });
    data.append(FP16x16 { mag: 65536, sign: false });
    data.append(FP16x16 { mag: 589824, sign: false });

    sequence.append(TensorTrait::new(shape.span(), data.span()));

    sequence
}
