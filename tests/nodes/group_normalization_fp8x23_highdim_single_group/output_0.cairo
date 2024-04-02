use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};
use orion::numbers::{FixedTrait, FP8x23};

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(1);
    shape.append(2);
    shape.append(3);
    shape.append(2);
    shape.append(3);
    shape.append(1);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 3373230, sign: false });
    data.append(FP8x23 { mag: 691059, sign: true });
    data.append(FP8x23 { mag: 1687606, sign: true });
    data.append(FP8x23 { mag: 763262, sign: true });
    data.append(FP8x23 { mag: 1990444, sign: false });
    data.append(FP8x23 { mag: 1344395, sign: false });
    data.append(FP8x23 { mag: 5604487, sign: true });
    data.append(FP8x23 { mag: 1020528, sign: false });
    data.append(FP8x23 { mag: 1390376, sign: true });
    data.append(FP8x23 { mag: 13421670, sign: true });
    data.append(FP8x23 { mag: 254635, sign: true });
    data.append(FP8x23 { mag: 10602981, sign: true });
    data.append(FP8x23 { mag: 7534055, sign: true });
    data.append(FP8x23 { mag: 11303242, sign: true });
    data.append(FP8x23 { mag: 13404140, sign: true });
    data.append(FP8x23 { mag: 11197856, sign: true });
    data.append(FP8x23 { mag: 9646331, sign: true });
    data.append(FP8x23 { mag: 3740564, sign: true });
    data.append(FP8x23 { mag: 13979676, sign: true });
    data.append(FP8x23 { mag: 17729998, sign: true });
    data.append(FP8x23 { mag: 5056176, sign: true });
    data.append(FP8x23 { mag: 2724501, sign: true });
    data.append(FP8x23 { mag: 616084, sign: true });
    data.append(FP8x23 { mag: 8477890, sign: true });
    data.append(FP8x23 { mag: 7661230, sign: true });
    data.append(FP8x23 { mag: 2521112, sign: true });
    data.append(FP8x23 { mag: 48802, sign: false });
    data.append(FP8x23 { mag: 6237316, sign: false });
    data.append(FP8x23 { mag: 11543378, sign: true });
    data.append(FP8x23 { mag: 10785375, sign: true });
    data.append(FP8x23 { mag: 1604734, sign: true });
    data.append(FP8x23 { mag: 15918176, sign: true });
    data.append(FP8x23 { mag: 8467064, sign: true });
    data.append(FP8x23 { mag: 1067992, sign: false });
    data.append(FP8x23 { mag: 4138153, sign: true });
    data.append(FP8x23 { mag: 1667592, sign: false });
    data.append(FP8x23 { mag: 3425993, sign: true });
    data.append(FP8x23 { mag: 9542773, sign: true });
    data.append(FP8x23 { mag: 4129287, sign: true });
    data.append(FP8x23 { mag: 1110104, sign: false });
    data.append(FP8x23 { mag: 6919151, sign: true });
    data.append(FP8x23 { mag: 290474, sign: false });
    data.append(FP8x23 { mag: 11627257, sign: true });
    data.append(FP8x23 { mag: 3919099, sign: false });
    data.append(FP8x23 { mag: 17015896, sign: true });
    data.append(FP8x23 { mag: 503892, sign: true });
    data.append(FP8x23 { mag: 941690, sign: true });
    data.append(FP8x23 { mag: 4218101, sign: true });
    data.append(FP8x23 { mag: 10861092, sign: true });
    data.append(FP8x23 { mag: 10062250, sign: true });
    data.append(FP8x23 { mag: 3610336, sign: false });
    data.append(FP8x23 { mag: 3167122, sign: true });
    data.append(FP8x23 { mag: 7303269, sign: true });
    data.append(FP8x23 { mag: 8909247, sign: true });
    data.append(FP8x23 { mag: 28211606, sign: true });
    data.append(FP8x23 { mag: 6075231, sign: true });
    data.append(FP8x23 { mag: 320296, sign: false });
    data.append(FP8x23 { mag: 3058761, sign: false });
    data.append(FP8x23 { mag: 18866006, sign: true });
    data.append(FP8x23 { mag: 21092120, sign: true });
    data.append(FP8x23 { mag: 9948884, sign: true });
    data.append(FP8x23 { mag: 12790990, sign: true });
    data.append(FP8x23 { mag: 21986274, sign: true });
    data.append(FP8x23 { mag: 10670469, sign: true });
    data.append(FP8x23 { mag: 25870768, sign: true });
    data.append(FP8x23 { mag: 8801698, sign: true });
    data.append(FP8x23 { mag: 13010076, sign: true });
    data.append(FP8x23 { mag: 32118656, sign: true });
    data.append(FP8x23 { mag: 21280826, sign: true });
    data.append(FP8x23 { mag: 16877372, sign: true });
    data.append(FP8x23 { mag: 26103172, sign: true });
    data.append(FP8x23 { mag: 7984291, sign: true });
    data.append(FP8x23 { mag: 6211174, sign: true });
    data.append(FP8x23 { mag: 11284582, sign: true });
    data.append(FP8x23 { mag: 9588506, sign: true });
    data.append(FP8x23 { mag: 7964418, sign: true });
    data.append(FP8x23 { mag: 10469252, sign: true });
    data.append(FP8x23 { mag: 12449142, sign: true });
    data.append(FP8x23 { mag: 4731869, sign: false });
    data.append(FP8x23 { mag: 7566437, sign: false });
    data.append(FP8x23 { mag: 28966174, sign: true });
    data.append(FP8x23 { mag: 13510845, sign: true });
    data.append(FP8x23 { mag: 204781, sign: true });
    data.append(FP8x23 { mag: 7850105, sign: true });
    data.append(FP8x23 { mag: 7001887, sign: true });
    data.append(FP8x23 { mag: 17524022, sign: true });
    data.append(FP8x23 { mag: 13035661, sign: true });
    data.append(FP8x23 { mag: 21939274, sign: true });
    data.append(FP8x23 { mag: 7225450, sign: true });
    data.append(FP8x23 { mag: 13641362, sign: true });
    data.append(FP8x23 { mag: 23435388, sign: true });
    data.append(FP8x23 { mag: 17888442, sign: true });
    data.append(FP8x23 { mag: 22956606, sign: true });
    data.append(FP8x23 { mag: 19572644, sign: true });
    data.append(FP8x23 { mag: 23546844, sign: true });
    data.append(FP8x23 { mag: 7083106, sign: true });
    data.append(FP8x23 { mag: 13770639, sign: true });
    data.append(FP8x23 { mag: 10046052, sign: true });
    data.append(FP8x23 { mag: 24238580, sign: true });
    data.append(FP8x23 { mag: 16240034, sign: true });
    data.append(FP8x23 { mag: 21529536, sign: true });
    data.append(FP8x23 { mag: 30882188, sign: true });
    data.append(FP8x23 { mag: 7835458, sign: true });
    data.append(FP8x23 { mag: 21866234, sign: true });
    data.append(FP8x23 { mag: 20980796, sign: true });
    data.append(FP8x23 { mag: 19461826, sign: true });
    data.append(FP8x23 { mag: 11925580, sign: true });
    data.append(FP8x23 { mag: 4923077, sign: true });
    TensorTrait::new(shape.span(), data.span())
}