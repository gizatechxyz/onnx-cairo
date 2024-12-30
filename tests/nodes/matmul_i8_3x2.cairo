mod input_0;
mod input_1;
mod output_0;


use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{I8Tensor, I8TensorAdd};
use orion::operators::tensor::I8TensorPartialEq;
use core::array::{ArrayTrait, SpanTrait};

#[test]
#[available_gas(2000000000)]
fn test_matmul_i8_3x2() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let z_0 = output_0::output_0();

    let y_0 = input_0.matmul(@input_1);

    assert_eq(y_0, z_0);
}