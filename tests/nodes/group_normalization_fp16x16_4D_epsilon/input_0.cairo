use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::numbers::{FixedTrait, FP16x16};

fn input_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(4);
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 143395, sign: true });
    data.append(FP16x16 { mag: 65029, sign: true });
    data.append(FP16x16 { mag: 39923, sign: true });
    data.append(FP16x16 { mag: 80597, sign: true });
    data.append(FP16x16 { mag: 73633, sign: false });
    data.append(FP16x16 { mag: 124853, sign: true });
    data.append(FP16x16 { mag: 54052, sign: false });
    data.append(FP16x16 { mag: 53247, sign: false });
    data.append(FP16x16 { mag: 38989, sign: true });
    data.append(FP16x16 { mag: 24643, sign: false });
    data.append(FP16x16 { mag: 15535, sign: true });
    data.append(FP16x16 { mag: 58552, sign: true });
    data.append(FP16x16 { mag: 15476, sign: true });
    data.append(FP16x16 { mag: 117133, sign: false });
    data.append(FP16x16 { mag: 128078, sign: false });
    data.append(FP16x16 { mag: 72020, sign: false });
    data.append(FP16x16 { mag: 60311, sign: false });
    data.append(FP16x16 { mag: 57775, sign: true });
    data.append(FP16x16 { mag: 66523, sign: true });
    data.append(FP16x16 { mag: 71801, sign: true });
    data.append(FP16x16 { mag: 52925, sign: false });
    data.append(FP16x16 { mag: 105370, sign: true });
    data.append(FP16x16 { mag: 35793, sign: true });
    data.append(FP16x16 { mag: 133488, sign: false });
    data.append(FP16x16 { mag: 45148, sign: true });
    data.append(FP16x16 { mag: 30888, sign: false });
    data.append(FP16x16 { mag: 8935, sign: false });
    data.append(FP16x16 { mag: 30373, sign: false });
    data.append(FP16x16 { mag: 298, sign: false });
    data.append(FP16x16 { mag: 58282, sign: true });
    data.append(FP16x16 { mag: 46883, sign: true });
    data.append(FP16x16 { mag: 27681, sign: true });
    data.append(FP16x16 { mag: 21864, sign: false });
    data.append(FP16x16 { mag: 105779, sign: false });
    data.append(FP16x16 { mag: 24254, sign: false });
    data.append(FP16x16 { mag: 44911, sign: true });
    data.append(FP16x16 { mag: 39264, sign: true });
    data.append(FP16x16 { mag: 42252, sign: false });
    data.append(FP16x16 { mag: 63044, sign: true });
    data.append(FP16x16 { mag: 174316, sign: true });
    data.append(FP16x16 { mag: 6985, sign: true });
    data.append(FP16x16 { mag: 83383, sign: true });
    data.append(FP16x16 { mag: 13529, sign: false });
    data.append(FP16x16 { mag: 87641, sign: false });
    data.append(FP16x16 { mag: 34003, sign: false });
    data.append(FP16x16 { mag: 42168, sign: true });
    data.append(FP16x16 { mag: 127750, sign: true });
    data.append(FP16x16 { mag: 87016, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
