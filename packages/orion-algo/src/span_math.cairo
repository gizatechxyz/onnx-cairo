pub mod span_f32x32;
pub mod span_f16x16;

use span_f16x16::F16x16SpanMath;
use span_f32x32::F32x32SpanMath;

pub trait SpanMathTrait<T> {
    fn arange(n: u32) -> Span<T>;
    fn dot(self: Span<T>, other: Span<T>) -> T;
    fn max(self: Span<T>) -> T;
    fn min(self: Span<T>) -> T;
    fn prod(self: Span<T>) -> T;
    fn sum(self: Span<T>) -> T;
}