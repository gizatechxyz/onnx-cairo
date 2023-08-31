use core::option::OptionTrait;

use orion::operators::tensor::core::Tensor;
use orion::numbers::signed_integer::i8::i8;
use orion::operators::nn::core::NNTrait;
use orion::operators::nn::functional;
use orion::numbers::fixed_point::implementations::fp8x23::core::FP8x23;
use orion::operators::tensor::implementations::tensor_i8_fp8x23::{Tensor_i8_fp8x23, i8TensorAdd};
use orion::operators::tensor::implementations::tensor_fp8x23::{Tensor_fp8x23, FP8x23TensorDiv};

impl NN_i8_fp8x23 of NNTrait<i8, FP8x23> {
    fn relu(tensor: @Tensor<i8>) -> Tensor<i8> {
        functional::relu::relu(*tensor)
    }

    fn sigmoid(tensor: @Tensor<i8>) -> Tensor<FP8x23> {
        functional::sigmoid::sigmoid_from_int(*tensor)
    }

    fn softmax(tensor: @Tensor<i8>, axis: usize) -> Tensor<FP8x23> {
        functional::softmax::softmax(tensor, axis)
    }

    fn logsoftmax(tensor: @Tensor<i8>, axis: usize) -> Tensor<FP8x23> {
        functional::logsoftmax::logsoftmax(tensor, axis)
    }

    fn softsign(tensor: @Tensor<i8>) -> Tensor<FP8x23> {
        functional::softsign::softsign_from_int(*tensor)
    }

    fn softplus(tensor: @Tensor<i8>) -> Tensor<FP8x23> {
        functional::softplus::softplus_from_int(*tensor)
    }

    fn linear(inputs: Tensor<i8>, weights: Tensor<i8>, bias: Tensor<i8>) -> Tensor<i8> {
        functional::linear::linear(inputs, weights, bias)
    }

    fn leaky_relu(inputs: @Tensor<i8>, alpha: @FP8x23) -> Tensor<FP8x23> {
        functional::leaky_relu::leaky_relu_from_int(*inputs, alpha)
    }
}