use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::numbers::{FixedTrait, FP16x16};

fn input_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);
    shape.append(3);
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 30780, sign: true });
    data.append(FP16x16 { mag: 34079, sign: false });
    data.append(FP16x16 { mag: 32250, sign: true });
    data.append(FP16x16 { mag: 26644, sign: true });
    data.append(FP16x16 { mag: 21459, sign: true });
    data.append(FP16x16 { mag: 4360, sign: false });
    data.append(FP16x16 { mag: 55230, sign: false });
    data.append(FP16x16 { mag: 3224, sign: true });
    data.append(FP16x16 { mag: 10865, sign: true });
    data.append(FP16x16 { mag: 47063, sign: false });
    data.append(FP16x16 { mag: 53414, sign: false });
    data.append(FP16x16 { mag: 172004, sign: true });
    data.append(FP16x16 { mag: 728, sign: false });
    data.append(FP16x16 { mag: 151337, sign: false });
    data.append(FP16x16 { mag: 85368, sign: false });
    data.append(FP16x16 { mag: 51497, sign: false });
    data.append(FP16x16 { mag: 595, sign: true });
    data.append(FP16x16 { mag: 57600, sign: false });
    data.append(FP16x16 { mag: 129560, sign: false });
    data.append(FP16x16 { mag: 134376, sign: true });
    data.append(FP16x16 { mag: 60528, sign: false });
    data.append(FP16x16 { mag: 9340, sign: true });
    data.append(FP16x16 { mag: 123485, sign: false });
    data.append(FP16x16 { mag: 17163, sign: true });
    data.append(FP16x16 { mag: 86402, sign: false });
    data.append(FP16x16 { mag: 85119, sign: true });
    data.append(FP16x16 { mag: 45136, sign: false });
    data.append(FP16x16 { mag: 10817, sign: false });
    data.append(FP16x16 { mag: 49553, sign: false });
    data.append(FP16x16 { mag: 127654, sign: true });
    data.append(FP16x16 { mag: 62261, sign: false });
    data.append(FP16x16 { mag: 36864, sign: false });
    data.append(FP16x16 { mag: 11170, sign: true });
    data.append(FP16x16 { mag: 51311, sign: false });
    data.append(FP16x16 { mag: 78361, sign: false });
    data.append(FP16x16 { mag: 77088, sign: true });
    data.append(FP16x16 { mag: 39396, sign: false });
    data.append(FP16x16 { mag: 15408, sign: false });
    data.append(FP16x16 { mag: 28757, sign: false });
    data.append(FP16x16 { mag: 3108, sign: true });
    data.append(FP16x16 { mag: 58494, sign: true });
    data.append(FP16x16 { mag: 92342, sign: false });
    data.append(FP16x16 { mag: 718, sign: false });
    data.append(FP16x16 { mag: 40015, sign: false });
    data.append(FP16x16 { mag: 95157, sign: false });
    data.append(FP16x16 { mag: 16831, sign: false });
    data.append(FP16x16 { mag: 37850, sign: true });
    data.append(FP16x16 { mag: 10355, sign: false });
    data.append(FP16x16 { mag: 122581, sign: true });
    data.append(FP16x16 { mag: 5546, sign: false });
    data.append(FP16x16 { mag: 42519, sign: true });
    data.append(FP16x16 { mag: 50365, sign: false });
    data.append(FP16x16 { mag: 79125, sign: true });
    data.append(FP16x16 { mag: 30298, sign: true });
    data.append(FP16x16 { mag: 21712, sign: true });
    data.append(FP16x16 { mag: 52240, sign: false });
    data.append(FP16x16 { mag: 51408, sign: true });
    data.append(FP16x16 { mag: 170099, sign: false });
    data.append(FP16x16 { mag: 5666, sign: false });
    data.append(FP16x16 { mag: 166792, sign: true });
    data.append(FP16x16 { mag: 90096, sign: true });
    data.append(FP16x16 { mag: 10759, sign: true });
    data.append(FP16x16 { mag: 135666, sign: false });
    data.append(FP16x16 { mag: 15756, sign: false });
    data.append(FP16x16 { mag: 82372, sign: true });
    data.append(FP16x16 { mag: 139412, sign: true });
    data.append(FP16x16 { mag: 86921, sign: false });
    data.append(FP16x16 { mag: 76771, sign: true });
    data.append(FP16x16 { mag: 8690, sign: false });
    data.append(FP16x16 { mag: 6929, sign: false });
    data.append(FP16x16 { mag: 80844, sign: true });
    data.append(FP16x16 { mag: 181557, sign: true });
    data.append(FP16x16 { mag: 93644, sign: true });
    data.append(FP16x16 { mag: 46291, sign: true });
    data.append(FP16x16 { mag: 89444, sign: true });
    data.append(FP16x16 { mag: 33024, sign: false });
    data.append(FP16x16 { mag: 33483, sign: false });
    data.append(FP16x16 { mag: 3439, sign: true });
    data.append(FP16x16 { mag: 111384, sign: true });
    data.append(FP16x16 { mag: 29827, sign: false });
    data.append(FP16x16 { mag: 49049, sign: false });
    data.append(FP16x16 { mag: 49883, sign: false });
    data.append(FP16x16 { mag: 53039, sign: true });
    data.append(FP16x16 { mag: 51258, sign: false });
    data.append(FP16x16 { mag: 84603, sign: false });
    data.append(FP16x16 { mag: 98932, sign: true });
    data.append(FP16x16 { mag: 84062, sign: true });
    data.append(FP16x16 { mag: 28680, sign: true });
    data.append(FP16x16 { mag: 40768, sign: false });
    data.append(FP16x16 { mag: 141065, sign: true });
    data.append(FP16x16 { mag: 35008, sign: false });
    data.append(FP16x16 { mag: 7136, sign: false });
    data.append(FP16x16 { mag: 101188, sign: false });
    data.append(FP16x16 { mag: 92221, sign: true });
    data.append(FP16x16 { mag: 81858, sign: false });
    data.append(FP16x16 { mag: 101225, sign: true });
    data.append(FP16x16 { mag: 60168, sign: true });
    data.append(FP16x16 { mag: 109304, sign: true });
    data.append(FP16x16 { mag: 40782, sign: false });
    data.append(FP16x16 { mag: 93767, sign: true });
    data.append(FP16x16 { mag: 3944, sign: true });
    data.append(FP16x16 { mag: 57327, sign: true });
    data.append(FP16x16 { mag: 35054, sign: false });
    data.append(FP16x16 { mag: 43544, sign: true });
    data.append(FP16x16 { mag: 14721, sign: true });
    data.append(FP16x16 { mag: 52019, sign: true });
    data.append(FP16x16 { mag: 35069, sign: true });
    data.append(FP16x16 { mag: 46591, sign: false });
    data.append(FP16x16 { mag: 3081, sign: true });
    data.append(FP16x16 { mag: 52799, sign: true });
    data.append(FP16x16 { mag: 59570, sign: true });
    data.append(FP16x16 { mag: 7094, sign: false });
    data.append(FP16x16 { mag: 8166, sign: false });
    data.append(FP16x16 { mag: 13539, sign: true });
    data.append(FP16x16 { mag: 104852, sign: true });
    data.append(FP16x16 { mag: 21290, sign: true });
    data.append(FP16x16 { mag: 85489, sign: false });
    data.append(FP16x16 { mag: 86694, sign: true });
    data.append(FP16x16 { mag: 102852, sign: true });
    data.append(FP16x16 { mag: 41773, sign: false });
    data.append(FP16x16 { mag: 23571, sign: false });
    data.append(FP16x16 { mag: 52128, sign: false });
    data.append(FP16x16 { mag: 54306, sign: true });
    data.append(FP16x16 { mag: 7933, sign: false });
    data.append(FP16x16 { mag: 25752, sign: false });
    data.append(FP16x16 { mag: 17609, sign: true });
    data.append(FP16x16 { mag: 22089, sign: true });
    data.append(FP16x16 { mag: 34733, sign: true });
    data.append(FP16x16 { mag: 13640, sign: true });
    data.append(FP16x16 { mag: 9908, sign: false });
    data.append(FP16x16 { mag: 45202, sign: false });
    data.append(FP16x16 { mag: 38589, sign: true });
    data.append(FP16x16 { mag: 75094, sign: true });
    data.append(FP16x16 { mag: 38376, sign: false });
    data.append(FP16x16 { mag: 58417, sign: false });
    data.append(FP16x16 { mag: 84891, sign: true });
    data.append(FP16x16 { mag: 71230, sign: false });
    data.append(FP16x16 { mag: 20766, sign: false });
    data.append(FP16x16 { mag: 56815, sign: false });
    data.append(FP16x16 { mag: 42181, sign: true });
    data.append(FP16x16 { mag: 10030, sign: false });
    data.append(FP16x16 { mag: 64375, sign: false });
    data.append(FP16x16 { mag: 42042, sign: false });
    data.append(FP16x16 { mag: 324, sign: true });
    data.append(FP16x16 { mag: 51780, sign: false });
    data.append(FP16x16 { mag: 15107, sign: false });
    data.append(FP16x16 { mag: 121893, sign: false });
    data.append(FP16x16 { mag: 29769, sign: true });
    data.append(FP16x16 { mag: 87672, sign: true });
    data.append(FP16x16 { mag: 34602, sign: true });
    data.append(FP16x16 { mag: 31047, sign: false });
    data.append(FP16x16 { mag: 25936, sign: true });
    data.append(FP16x16 { mag: 116182, sign: false });
    data.append(FP16x16 { mag: 48931, sign: true });
    data.append(FP16x16 { mag: 9353, sign: true });
    data.append(FP16x16 { mag: 24513, sign: false });
    data.append(FP16x16 { mag: 68848, sign: false });
    data.append(FP16x16 { mag: 20028, sign: false });
    data.append(FP16x16 { mag: 45197, sign: false });
    data.append(FP16x16 { mag: 25511, sign: true });
    data.append(FP16x16 { mag: 52345, sign: false });
    data.append(FP16x16 { mag: 74760, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
