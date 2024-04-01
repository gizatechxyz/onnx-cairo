mod input_0;
mod output_0;


use orion::operators::tensor::{I32Tensor, I32TensorAdd};
use orion::operators::tensor::I32TensorPartialEq;
use orion::operators::tensor::{TensorTrait, Tensor};
use core::array::{ArrayTrait, SpanTrait};
use orion::utils::{assert_eq, assert_seq_eq};

#[test]
#[available_gas(2000000000)]
fn test_tile_i32() {
    let input_0 = input_0::input_0();
    let z_0 = output_0::output_0();

    let y_0 = input_0.tile(array![4, 4].span());

    assert_eq(y_0, z_0);
}