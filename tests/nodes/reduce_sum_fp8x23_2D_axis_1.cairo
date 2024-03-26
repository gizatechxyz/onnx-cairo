mod input_0;
mod output_0;


use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorMul};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::FP8x23TensorPartialEq;
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};

#[test]
#[available_gas(2000000000)]
fn test_reduce_sum_fp8x23_2D_axis_1() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.reduce_sum(1, false);

    assert_eq(y, z);
}