//! This module defines and implement a Tensor for u32 values.

use array::ArrayTrait;
use array::SpanTrait;
use core::option::OptionTrait;

use orion::numbers::fixed_point::core::FixedType;

use orion::operators::tensor::core::{
    new_tensor, stride, Tensor, TensorTrait, ExtraParams, ravel_index, unravel_index, reshape,
    at_tensor
};
use orion::operators::tensor::math::min::min_u32::min_in_tensor;
use orion::operators::tensor::math::max::max_u32::max_in_tensor;
use orion::operators::tensor::math::reduce_sum::reduce_sum_u32::reduce_sum;
use orion::operators::tensor::math::argmax::argmax_u32::argmax;
use orion::operators::tensor::math::argmin::argmin_u32::argmin;
use orion::operators::tensor::linalg::matmul::matmul_u32::matmul;
use orion::operators::tensor::math::equal::equal_u32::equal;
use orion::operators::tensor::math::greater::greater_u32::greater;
use orion::operators::tensor::math::greater_equal::greater_equal_u32::greater_equal;
use orion::operators::tensor::math::less::less_u32::less;
use orion::operators::tensor::math::less_equal::less_equal_u32::less_equal;
use orion::operators::tensor::math::abs::abs_u32::abs;
use orion::operators::tensor::math::ceil::ceil_u32::ceil;
use orion::operators::tensor::linalg::transpose::transpose_u32::transpose;
use orion::operators::tensor::math::exp::exp_u32::core::exp_u32;
use orion::operators::tensor::math::arithmetic::arithmetic_u32::{add, sub, mul, div};
use orion::utils::check_gas;

impl Tensor_u32 of TensorTrait<u32> {
    fn new(shape: Span<usize>, data: Span<u32>, extra: Option<ExtraParams>) -> Tensor<u32> {
        new_tensor(shape, data, extra)
    }

    fn at(self: @Tensor<u32>, indices: Span<usize>) -> u32 {
        *at_tensor(self, indices)
    }

    fn min(self: @Tensor<u32>) -> u32 {
        min_in_tensor(*self.data)
    }

    fn max(self: @Tensor<u32>) -> u32 {
        max_in_tensor(*self.data)
    }

    fn stride(self: @Tensor<u32>) -> Span<usize> {
        stride(*self.shape)
    }

    fn ravel_index(self: @Tensor<u32>, indices: Span<usize>) -> usize {
        ravel_index(*self.shape, indices)
    }

    fn unravel_index(self: @Tensor<u32>, index: usize) -> Span<usize> {
        unravel_index(index, *self.shape)
    }

    fn reshape(self: @Tensor<u32>, target_shape: Span<usize>) -> Tensor<u32> {
        reshape(self, target_shape)
    }

    fn reduce_sum(self: @Tensor<u32>, axis: usize, keepdims: bool) -> Tensor<u32> {
        reduce_sum(self, axis, keepdims)
    }

    fn argmax(self: @Tensor<u32>, axis: usize) -> Tensor<usize> {
        argmax(self, axis)
    }

    fn argmin(self: @Tensor<u32>, axis: usize, keepdims: Option<bool>, select_last_index: Option<bool>) -> Tensor<usize> {
        argmin(self, axis, keepdims, select_last_index)
    }

    fn transpose(self: @Tensor<u32>, axes: Span<usize>) -> Tensor<u32> {
        transpose(self, axes)
    }

    fn matmul(self: @Tensor<u32>, other: @Tensor<u32>) -> Tensor<u32> {
        matmul(self, other)
    }

    fn exp(self: @Tensor<u32>) -> Tensor<FixedType> {
        exp_u32(self).unwrap()
    }

    fn eq(self: @Tensor<u32>, other: @Tensor<u32>) -> Tensor<usize> {
        equal(self, other)
    }

    fn greater(self: @Tensor<u32>, other: @Tensor<u32>) -> Tensor<usize> {
        greater(self, other)
    }

    fn greater_equal(self: @Tensor<u32>, other: @Tensor<u32>) -> Tensor<usize> {
        greater_equal(self, other)
    }

    fn less(self: @Tensor<u32>, other: @Tensor<u32>) -> Tensor<usize> {
        less(self, other)
    }

    fn less_equal(self: @Tensor<u32>, other: @Tensor<u32>) -> Tensor<usize> {
        less_equal(self, other)
    }


    fn abs(self: @Tensor<u32>) -> Tensor<u32> {
        abs(self)
    }

    fn ceil(self: @Tensor<u32>) -> Tensor<u32> {
        ceil(self)
    }
}

/// Implements addition for `Tensor<u32>` using the `Add` trait.
impl U32TensorAdd of Add<Tensor<u32>> {
    /// Adds two `Tensor<u32>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<u32>` instance representing the result of the element-wise addition.
    fn add(lhs: Tensor<u32>, rhs: Tensor<u32>) -> Tensor<u32> {
        add(@lhs, @rhs)
    }
}

/// Implements subtraction for `Tensor<u32>` using the `Sub` trait.
impl U32TensorSub of Sub<Tensor<u32>> {
    /// Subtracts two `Tensor<u32>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<u32>` instance representing the result of the element-wise subtraction.
    fn sub(lhs: Tensor<u32>, rhs: Tensor<u32>) -> Tensor<u32> {
        sub(@lhs, @rhs)
    }
}

/// Implements multiplication for `Tensor<u32>` using the `Mul` trait.
impl U32TensorMul of Mul<Tensor<u32>> {
    /// Multiplies two `Tensor<u32>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<u32>` instance representing the result of the element-wise multiplication.
    fn mul(lhs: Tensor<u32>, rhs: Tensor<u32>) -> Tensor<u32> {
        mul(@lhs, @rhs)
    }
}

/// Implements division for `Tensor<u32>` using the `Div` trait.
impl U32TensorDiv of Div<Tensor<u32>> {
    /// Divides two `Tensor<u32>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<u32>` instance representing the result of the element-wise division.
    fn div(lhs: Tensor<u32>, rhs: Tensor<u32>) -> Tensor<u32> {
        div(@lhs, @rhs)
    }
}
