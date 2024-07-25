use orion_numbers::{FixedTrait};
use orion_numbers::f32x32::core::f32x32;

use orion_algo::span_math::SpanMathTrait;


pub impl F32x32SpanMath of SpanMathTrait<f32x32> {
    fn arange(n: u32) -> Span<f32x32> {
        arange(n)
    }

    fn dot(self: Span<f32x32>, other: Span<f32x32>) -> f32x32 {
        dot(self, other)
    }

    fn max(self: Span<f32x32>) -> f32x32 {
        max(self)
    }

    fn min(self: Span<f32x32>) -> f32x32 {
        min(self)
    }

    fn prod(self: Span<f32x32>) -> f32x32 {
        prod(self)
    }

    fn sum(self: Span<f32x32>) -> f32x32 {
        sum(self)
    }
}

fn arange(n: u32) -> Span<f32x32> {
    let mut i = 0;
    let mut arr = array![];
    while i < n {
        arr.append(i.try_into().unwrap() * FixedTrait::ONE);
        i += 1;
    };

    arr.span()
}

fn dot(a: Span<f32x32>, b: Span<f32x32>) -> f32x32 {
    let mut i = 0;
    let mut acc = 0;
    while i != a.len() {
        acc += FixedTrait::mul(*a.at(i), *b.at(i));
        i += 1;
    };

    acc
}

fn max(mut a: Span<f32x32>) -> f32x32 {
    assert(a.len() > 0, 'span cannot be empty');

    let mut max = FixedTrait::MIN;

    loop {
        match a.pop_front() {
            Option::Some(item) => { if *item > max {
                max = *item;
            } },
            Option::None => { break max; },
        }
    }
}

fn min(mut a: Span<f32x32>) -> f32x32 {
    assert(a.len() > 0, 'span cannot be empty');

    let mut min = FixedTrait::MAX;

    loop {
        match a.pop_front() {
            Option::Some(item) => { if *item < min {
                min = *item;
            } },
            Option::None => { break min; },
        }
    }
}

fn prod(mut a: Span<f32x32>) -> f32x32 {
    let mut prod = 1;
    loop {
        match a.pop_front() {
            Option::Some(v) => { prod = prod.mul(*v); },
            Option::None => { break prod; }
        };
    }
}

fn sum(mut a: Span<f32x32>) -> f32x32 {
    let mut prod = 1;
    loop {
        match a.pop_front() {
            Option::Some(v) => { prod = prod + *v; },
            Option::None => { break prod; }
        };
    }
}


#[cfg(test)]
mod tests {
    use super::{arange, dot, max, min, prod, sum};
    use orion_numbers::f32x32::helpers::assert_precise;
    use orion_numbers::F32x32Impl;

    #[test]
    fn test_arange() {
        let n = 6;
        let res = arange(n);

        let x = array![0, 4294967296, 8589934592, 12884901888, 17179869184, 21474836480].span();

        assert_precise(*res.at(0), *x.at(0), 'should be equal', Option::None);
        assert_precise(*res.at(1), *x.at(1), 'should be equal', Option::None);
        assert_precise(*res.at(2), *x.at(2), 'should be equal', Option::None);
        assert_precise(*res.at(3), *x.at(3), 'should be equal', Option::None);
        assert_precise(*res.at(4), *x.at(4), 'should be equal', Option::None);
        assert_precise(*res.at(5), *x.at(5), 'should be equal', Option::None);
    }

    #[test]
    fn test_dot() {
        let x = array![0, 4294967296, 8589934592, 12884901888, 17179869184, 21474836480]
            .span(); // 0, 1, 2, 3, 4, 5
        let y = array![0, 8589934592, 17179869184, 25769803776, 34359738368, 42949672960]
            .span(); // 0, 2, 4, 6, 8, 10
        let result = dot(x, y);

        assert_precise(result, (7208960 * F32x32Impl::ONE).into(), 'should be equal', Option::None);
    }

    #[test]
    fn test_max() {
        let x = array![0, 4294967296, 8589934592, 12884901888, 17179869184, 21474836480]
            .span(); // 0, 1, 2, 3, 4, 5

        let result = max(x);

        assert_precise(result, 21474836480, 'should be equal', Option::None);
    }

    #[test]
    fn test_min() {
        let x = array![0, 4294967296, 8589934592, 12884901888, 17179869184, 21474836480]
            .span(); // 0, 1, 2, 3, 4, 5

        let result = min(x);

        assert_precise(result, 0, 'should be equal', Option::None);
    }

    #[test]
    fn test_prod() {
        let x = array![0, 4294967296, 8589934592, 12884901888, 17179869184, 21474836480]
            .span(); // 0, 1, 2, 3, 4, 5

        let result = prod(x);

        assert_precise(result, 0, 'should be equal', Option::None);
    }

    #[test]
    fn test_sum() {
        let x = array![0, 4294967296, 8589934592, 12884901888, 17179869184, 21474836480]
            .span(); // 0, 1, 2, 3, 4, 5

        let result = sum(x);

        assert_precise(
            result, (98304000 * F32x32Impl::ONE).into(), 'should be equal', Option::None
        );
    }
}
