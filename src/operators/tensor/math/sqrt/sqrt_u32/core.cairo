use orion::numbers::fixed_point::core::{FixedType, FixedImpl};
use orion::operators::tensor::core::{Tensor};
use orion::numbers::signed_integer::i32::i32;
use orion::operators::tensor::math::sqrt::sqrt_u32::fp8x23;
use orion::operators::tensor::math::sqrt::sqrt_u32::fp16x16;

fn sqrt_u32(self: @Tensor<u32>) -> Option<Tensor<FixedType>> {
    match *self.extra {
        Option::Some(extra_params) => match extra_params.fixed_point {
            Option::Some(fixed_point) => match fixed_point {
                FixedImpl::FP8x23(()) => Option::Some(fp8x23::sqrt(self)),
                FixedImpl::FP16x16(()) => Option::Some(fp16x16::sqrt(self)),
            },
            Option::None(_) => Option::Some(fp16x16::sqrt(self)),
        },
        Option::None(_) => Option::Some(fp16x16::sqrt(self)),
    }
}