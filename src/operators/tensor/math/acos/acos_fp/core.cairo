use orion::numbers::fixed_point::core::{FixedType, FixedImpl};
use orion::operators::tensor::core::{Tensor};
use orion::operators::tensor::math::acos::acos_fp::fp8x23;
use orion::operators::tensor::math::acos::acos_fp::fp16x16;

/// Cf: TensorTrait::acos docstring
fn acos(self: @Tensor<FixedType>) -> Option<Tensor<FixedType>> {
    match *self.extra {
        Option::Some(extra_params) => match extra_params.fixed_point {
            Option::Some(fixed_point) => match fixed_point {
                FixedImpl::FP8x23(()) => Option::Some(fp8x23::acos(self)),
                FixedImpl::FP16x16(()) => Option::Some(fp16x16::acos(self)),
            },
            Option::None(_) => Option::Some(fp16x16::acos(self)),
        },
        Option::None(_) => Option::Some(fp16x16::acos(self)),
    }
}
