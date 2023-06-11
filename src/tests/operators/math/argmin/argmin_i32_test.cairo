use array::{ArrayTrait,SpanTrait};
use orion::numbers::signed_integer::{integer_trait::IntegerTrait, i32::i32};
use orion::operators::tensor::implementations::impl_tensor_i32;
use orion::operators::tensor::core::{TensorTrait, Tensor, ExtraParams};

use orion::tests::operators::tensor::helpers::{i32_tensor_2x2_helper, i32_tensor_2x2x2_helper};

#[test]
#[available_gas(20000000)]
fn tensor2x2_argmin_i32() {
    let tensor = i32_tensor_2x2_helper();

    let result = tensor.argmin(0,Option::None(()),Option::None(()));
    assert(*result.data.at(0) == 0, 'result[0] = 0');
    assert(*result.data.at(1) == 0, 'result[1] = 0');
    assert(result.data.len() == 2, 'length == 2');

    let result = tensor.argmin(1,Option::None(()),Option::None(()));
    assert(*result.data.at(0) == 0, 'result[0] = 0');
    assert(*result.data.at(1) == 0, 'result[1] = 0');
    assert(result.data.len() == 2, 'length == 2');

    let result = tensor.argmin(1,Option::Some(false),Option::Some(false));
    assert(*result.data.at(0) == 0, 'result[0] = 0');
    assert(*result.data.at(1) == 0, 'result[1] = 0');
    assert(result.data.len() == 2, 'length == 2');
}


#[test]
#[available_gas(20000000)]
fn tensor2x2x2_argmin_i32() {
    let tensor = i32_tensor_2x2x2_helper();

    let result = tensor.argmin(0,Option::None(()),Option::None(())).data;

    assert(*result.at(0) == 0, 'result[0] = 0');
    assert(*result.at(1) == 0, 'result[1] = 0');
    assert(*result.at(2) == 0, 'result[2] = 0');
    assert(*result.at(3) == 0, 'result[3] = 0');
    assert(result.len() == 4, 'length == 4');

    let result = tensor.argmin(1,Option::None(()),Option::None(())).data;

    assert(*result.at(0) == 0, 'result[0] = 0');
    assert(*result.at(1) == 0, 'result[1] = 0');
    assert(*result.at(2) == 0, 'result[2] = 0');
    assert(*result.at(3) == 0, 'result[3] = 0');
    assert(result.len() == 4, 'length == 4');

    let result = tensor.argmin(2,Option::None(()),Option::None(())).data;

    assert(*result.at(0) == 0, 'result[0] = 0');
    assert(*result.at(1) == 0, 'result[1] = 0');
    assert(*result.at(2) == 0, 'result[2] = 0');
    assert(*result.at(3) == 0, 'result[3] = 0');
    assert(result.len() == 4, 'length == 4');
}

#[test]
#[available_gas(20000000)]
fn tensor_argmin_select_last_index_i32(){
    let mut sizes = ArrayTrait::new();
    sizes.append(2);
    sizes.append(2);

    let mut data = ArrayTrait::new();
    data.append(IntegerTrait::new(2_u32, false));
    data.append(IntegerTrait::new(2_u32, false));
    data.append(IntegerTrait::new(3_u32, false));
    data.append(IntegerTrait::new(4_u32, false));
    let extra = Option::<ExtraParams>::None(());

    let tensor = TensorTrait::<i32>::new(sizes.span(), data.span(), extra);
    
    let result = tensor.argmin(1,Option::None(()),Option::None(()));
    assert(*result.data.at(0) == 0, 'result[0] = 0');
    assert(*result.data.at(1) == 0, 'result[1] = 0');
    assert(result.data.len() == 2, 'length == 2');

    let result = tensor.argmin(1,Option::Some(false),Option::Some(true));
    assert(*result.data.at(0) == 1, 'result[0] = 1');
    assert(*result.data.at(1) == 0, 'result[1] = 0');
    assert(result.data.len() == 2, 'length == 2');

}

#[test]
#[available_gas(20000000)]
fn tensor_argmin_keepdims_i32(){
    let mut sizes = ArrayTrait::new();
    sizes.append(2);
    sizes.append(2);

    let mut data = ArrayTrait::new();
    data.append(IntegerTrait::new(2_u32, false));
    data.append(IntegerTrait::new(2_u32, false));
    data.append(IntegerTrait::new(3_u32, false));
    data.append(IntegerTrait::new(4_u32, false));
    let extra = Option::<ExtraParams>::None(());

    let tensor = TensorTrait::<i32>::new(sizes.span(), data.span(), extra);
    
    let result = tensor.argmin(1,Option::Some(false),Option::None(()));
    assert(*result.data.at(0) == 0, 'result[0] = 0');
    assert(*result.data.at(1) == 0, 'result[1] = 0');
    assert(result.data.len() == 2, 'length == 2');
    assert(result.shape.len() == 1, 'result.shape.len() == 1');


    let result = tensor.argmin(1,Option::Some(true), Option::Some(true));
    assert(*result.data.at(0) == 1, 'result[0] = 1');
    assert(*result.data.at(1) == 0, 'result[1] = 0');
    assert(result.data.len() == 2, 'length == 2');
    assert(result.shape.len() == 2, 'result.shape.len() == 2');

    let result = tensor.argmin(1,Option::Some(true), Option::Some(false));
    assert(*result.data.at(0) == 0, 'result[0] = 1');
    assert(*result.data.at(1) == 0, 'result[1] = 0');
    assert(result.data.len() == 2, 'length == 2');
    assert(result.shape.len() == 2, 'result.shape.len() == 2');

}
