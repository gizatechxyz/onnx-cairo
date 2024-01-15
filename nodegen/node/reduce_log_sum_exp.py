import numpy as np
from nodegen.node import RunAll
from ..helpers import make_test, to_fp, Tensor, Dtype, FixedImpl

class Reduce_log_sum_exp(RunAll):
  @staticmethod
  def reduce_log_sum_exp_fp8x23():
    def reduce_log_sum_exp_export_do_not_keepdims():
      shape = [3, 2, 2]
      axes = np.array([2], dtype=np.uint32)
      keepdims = False
      x = np.reshape(np.arange(1, np.prod(shape) + 1, dtype=np.uint32), shape)
      y = np.log(np.sum(np.exp(x), axis=tuple(axes), keepdims=False)).astype(np.uint32)

      x = Tensor(Dtype.FP8x23, x.shape, to_fp(
          x.flatten(), FixedImpl.FP8x23))
      y = Tensor(Dtype.FP8x23, y.shape, to_fp(
          y.flatten(), FixedImpl.FP8x23))
      
      name = "reduce_log_sum_exp_fp8x23_export_do_not_keepdims"
      make_test(
          [x], y, "input_0.reduce_log_sum_exp(2, false)", name)
      
    def reduce_log_sum_exp_export_keepdims():
      shape = [3, 2, 2]
      axes = np.array([2], dtype=np.uint32)
      keepdims = True 
      x = np.reshape(np.arange(1, np.prod(shape) + 1, dtype=np.uint32), shape)
      y = np.log(np.sum(np.exp(x), axis=tuple(axes), keepdims=True)).astype(np.uint32)

      x = Tensor(Dtype.FP8x23, x.shape, to_fp(
          x.flatten(), FixedImpl.FP8x23))
      y = Tensor(Dtype.FP8x23, y.shape, to_fp(
          y.flatten(), FixedImpl.FP8x23))
      
      name = "reduce_log_sum_exp_fp8x23_export_keepdims"
      make_test(
          [x], y, "input_0.reduce_log_sum_exp(2, true)", name)

    def reduce_log_sum_exp_axis_0():
      shape = [3, 2, 2]
      axes = np.array([0], dtype=np.uint32)
      keepdims = True
      x = np.reshape(np.arange(1, np.prod(shape) + 1), shape)
      y = np.log(np.sum(np.exp(x), axis=tuple(axes), keepdims=True)).astype(np.uint32)

      x = Tensor(Dtype.FP8x23, x.shape, to_fp(
          x.flatten(), FixedImpl.FP8x23))
      y = Tensor(Dtype.FP8x23, y.shape, to_fp(
          y.flatten(), FixedImpl.FP8x23))

      name = "reduce_log_sum_exp_fp8x23_export_negative_axes_keepdims"
      make_test(  
          [x], y, "input_0.reduce_log_sum_exp(0, true)", name)

    reduce_log_sum_exp_export_do_not_keepdims()
    reduce_log_sum_exp_export_keepdims()
    reduce_log_sum_exp_axis_0()

  @staticmethod
  def reduce_log_sum_exp_fp16x16():
    def reduce_log_sum_exp_export_do_not_keepdims():
      shape = [3, 2, 2]
      axes = np.array([2], dtype=np.uint32)
      keepdims = False
      x = np.reshape(np.arange(1, np.prod(shape) + 1, dtype=np.uint32), shape)
      y = np.log(np.sum(np.exp(x), axis=tuple(axes), keepdims=False)).astype(np.uint32)

      x = Tensor(Dtype.FP16x16, x.shape, to_fp(
          x.flatten(), FixedImpl.FP16x16))
      y = Tensor(Dtype.FP16x16, y.shape, to_fp(
          y.flatten(), FixedImpl.FP16x16))
      
      name = "reduce_log_sum_exp_fp16x16_export_do_not_keepdims"
      make_test(
          [x], y, "input_0.reduce_log_sum_exp(2, false)", name)
      
    def reduce_log_sum_exp_export_keepdims():
      shape = [3, 2, 2]
      axes = np.array([2], dtype=np.uint32)
      keepdims = True
      x = np.reshape(np.arange(1, np.prod(shape) + 1, dtype=np.uint32), shape)
      y = np.log(np.sum(np.exp(x), axis=tuple(axes), keepdims=True)).astype(np.uint32)

      x = Tensor(Dtype.FP16x16, x.shape, to_fp(
          x.flatten(), FixedImpl.FP16x16))
      y = Tensor(Dtype.FP16x16, y.shape, to_fp(
          y.flatten(), FixedImpl.FP16x16))
      
      name = "reduce_log_sum_exp_fp16x16_export_keepdims"
      make_test(
          [x], y, "input_0.reduce_log_sum_exp(2, true)", name)
      
    def reduce_log_sum_exp_axis_0():
      shape = [3, 2, 2]
      axes = np.array([0], dtype=np.uint32)
      keepdims = True
      x = np.reshape(np.arange(1, np.prod(shape) + 1), shape)
      y = np.log(np.sum(np.exp(x), axis=tuple(axes), keepdims=True)).astype(np.uint32)

      x = Tensor(Dtype.FP16x16, x.shape, to_fp(
          x.flatten(), FixedImpl.FP16x16))  
      y = Tensor(Dtype.FP16x16, y.shape, to_fp(
          y.flatten(), FixedImpl.FP16x16))

      name = "reduce_log_sum_exp_fp16x16_export_negative_axes_keepdims"
      make_test(
          [x], y, "input_0.reduce_log_sum_exp(0, true)", name)
      
    reduce_log_sum_exp_export_do_not_keepdims()
    reduce_log_sum_exp_export_keepdims()
    reduce_log_sum_exp_axis_0()
      
  



  

