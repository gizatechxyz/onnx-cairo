mod input_0; 
mod output_0; 


use array::ArrayTrait;
use orion::operators::tensor::core::TensorTrait;
use orion::operators::tensor::implementations::impl_tensor_i32::Tensor_i32;
use orion::operators::tensor::implementations::impl_tensor_i32::i32TensorPartialEq;
use orion::utils::assert_eq;

#[test]
#[available_gas(2000000000)]
fn test_transpose_i32_2d() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.transpose(array![1, 0].span());

    assert_eq(y, z);
}