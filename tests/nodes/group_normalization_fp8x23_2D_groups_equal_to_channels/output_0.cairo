use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};
use orion::numbers::{FixedTrait, FP8x23};

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 20554774, sign: true });
    data.append(FP8x23 { mag: 6206306, sign: true });
    data.append(FP8x23 { mag: 20554774, sign: true });
    data.append(FP8x23 { mag: 6206306, sign: true });
    data.append(FP8x23 { mag: 20554774, sign: true });
    data.append(FP8x23 { mag: 6206306, sign: true });
    TensorTrait::new(shape.span(), data.span())
}