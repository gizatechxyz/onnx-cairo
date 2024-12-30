mod input_0;
mod output_0;


use orion::operators::tensor::{U32Tensor, U32TensorAdd};
use orion::operators::tensor::{TensorTrait, Tensor};
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::U32TensorPartialEq;
use orion::utils::{assert_eq, assert_seq_eq};

#[test]
#[available_gas(2000000000)]
fn test_cumsum_u32_1d_reverse_exclusive() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.cumsum(0, Option::Some(true), Option::Some(true));

    assert_eq(y, z);
}