use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};
use orion::numbers::{FixedTrait, FP8x23};

fn input_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(4);
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 589558, sign: true });
    data.append(FP8x23 { mag: 13696468, sign: true });
    data.append(FP8x23 { mag: 3084097, sign: true });
    data.append(FP8x23 { mag: 3780253, sign: true });
    data.append(FP8x23 { mag: 8448276, sign: true });
    data.append(FP8x23 { mag: 16234858, sign: true });
    data.append(FP8x23 { mag: 1169701, sign: false });
    data.append(FP8x23 { mag: 8474756, sign: true });
    data.append(FP8x23 { mag: 7331874, sign: true });
    data.append(FP8x23 { mag: 6200781, sign: true });
    data.append(FP8x23 { mag: 8565888, sign: true });
    data.append(FP8x23 { mag: 162290, sign: true });
    data.append(FP8x23 { mag: 11631012, sign: false });
    data.append(FP8x23 { mag: 11778307, sign: true });
    data.append(FP8x23 { mag: 10765625, sign: true });
    data.append(FP8x23 { mag: 3766372, sign: true });
    data.append(FP8x23 { mag: 7045577, sign: true });
    data.append(FP8x23 { mag: 1564820, sign: false });
    data.append(FP8x23 { mag: 9222805, sign: true });
    data.append(FP8x23 { mag: 3393731, sign: false });
    data.append(FP8x23 { mag: 5663676, sign: false });
    data.append(FP8x23 { mag: 3236553, sign: true });
    data.append(FP8x23 { mag: 9546349, sign: false });
    data.append(FP8x23 { mag: 6730388, sign: false });
    data.append(FP8x23 { mag: 4132021, sign: true });
    data.append(FP8x23 { mag: 13238808, sign: true });
    data.append(FP8x23 { mag: 4074150, sign: true });
    data.append(FP8x23 { mag: 6577608, sign: true });
    data.append(FP8x23 { mag: 3203375, sign: false });
    data.append(FP8x23 { mag: 1030422, sign: false });
    data.append(FP8x23 { mag: 7303543, sign: true });
    data.append(FP8x23 { mag: 6723235, sign: true });
    data.append(FP8x23 { mag: 3719884, sign: false });
    data.append(FP8x23 { mag: 1392317, sign: true });
    data.append(FP8x23 { mag: 2962499, sign: false });
    data.append(FP8x23 { mag: 12121215, sign: false });
    data.append(FP8x23 { mag: 148826, sign: false });
    data.append(FP8x23 { mag: 3844344, sign: false });
    data.append(FP8x23 { mag: 4246882, sign: false });
    data.append(FP8x23 { mag: 9838484, sign: true });
    data.append(FP8x23 { mag: 7044074, sign: true });
    data.append(FP8x23 { mag: 961736, sign: false });
    data.append(FP8x23 { mag: 4314166, sign: false });
    data.append(FP8x23 { mag: 11831106, sign: true });
    data.append(FP8x23 { mag: 7538242, sign: false });
    data.append(FP8x23 { mag: 17634446, sign: true });
    data.append(FP8x23 { mag: 3668059, sign: false });
    data.append(FP8x23 { mag: 558019, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
