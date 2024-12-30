use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorSub};
use orion::numbers::{FixedTrait, FP8x23};

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 31053727, sign: false });
    data.append(FP8x23 { mag: 36988061, sign: false });
    data.append(FP8x23 { mag: 31546937, sign: false });
    data.append(FP8x23 { mag: 37646001, sign: false });
    TensorTrait::new(shape.span(), data.span())
}