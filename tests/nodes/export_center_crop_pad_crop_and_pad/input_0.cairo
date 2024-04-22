use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::Complex64Tensor;
use orion::numbers::{NumberTrait, complex64};
use orion::operators::tensor::{U32Tensor, U32TensorAdd};
use orion::numbers::{FixedTrait, FP64x64};


fn input_0() -> Tensor<complex64> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(20);
    shape.append(8);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 3, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 3, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 3, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 2, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 1, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 2, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 { real: FP64x64 { mag: 0, sign: true }, img: FP64x64 { mag: 0, sign: false } }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 1, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    data
        .append(
            complex64 {
                real: FP64x64 { mag: 0, sign: false }, img: FP64x64 { mag: 0, sign: false }
            }
        );
    TensorTrait::new(shape.span(), data.span())
}
