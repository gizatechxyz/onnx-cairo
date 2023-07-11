use core::debug::PrintTrait;
use traits::Into;

use orion::numbers::fixed_point::implementations::impl_8x23::{ONE, ONE_u64, MAX, HALF, PI, HALF_PI};
use orion::numbers::fixed_point::implementations::impl_8x23::{
    FP8x23Impl, FP8x23Add, FP8x23AddEq, FP8x23Into, FP8x23Print, FP8x23PartialEq, FP8x23Sub,
    FP8x23SubEq, FP8x23Mul, FP8x23MulEq, FP8x23Div, FP8x23DivEq, FP8x23PartialOrd, FP8x23Neg
};
use orion::numbers::fixed_point::core::{FixedTrait, FixedType};
use orion::utils::check_gas;

/// Cf: FixedTrait::abs docstring
fn abs(a: FixedType) -> FixedType {
    return FixedTrait::new(a.mag, false);
}

/// Adds two fixed point numbers and returns the result.
///
/// # Arguments
///
/// * `a` - The first fixed point number to add.
/// * `b` - The second fixed point number to add.
///
/// # Returns
///
/// * The sum of the input fixed point numbers.
fn add(a: FixedType, b: FixedType) -> FixedType {
    check_gas();
    return FixedTrait::from_felt(a.into() + b.into());
}

/// Cf: FixedTrait::ceil docstring
fn ceil(a: FixedType) -> FixedType {
    let (div_u128, rem_u128) = _split_unsigned(a);

    if (rem_u128 == 0_u128) {
        return a;
    } else if (a.sign == false) {
        return FixedTrait::new_unscaled(div_u128 + 1_u128, false);
    } else {
        return FixedTrait::from_unscaled_felt(div_u128.into() * -1);
    }
}
/// Divides the first fixed point number by the second fixed point number and returns the result.
///
/// # Arguments
///
/// * `a` - The dividend fixed point number.
/// * `b` - The divisor fixed point number.
///
/// # Returns
///
/// * The result of the division of the input fixed point numbers.
fn div(a: FixedType, b: FixedType) -> FixedType {
    check_gas();
    let res_sign = a.sign ^ b.sign;

    // Invert b to preserve precision as much as possible
    // TODO: replace if / when there is a felt div_rem supported
    let (a_high, a_low) = integer::u128_wide_mul(a.mag, ONE);
    let b_inv = MAX / b.mag;
    let res_u128 = a_low / b.mag + a_high * b_inv;

    // Re-apply sign
    return FixedType { mag: res_u128, sign: res_sign };
}
/// Checks whether two fixed point numbers are equal.
///
/// # Arguments
///
/// * `a` - The first fixed point number to compare.
/// * `b` - The second fixed point number to compare.
///
/// # Returns
///
/// * A boolean value that indicates whether the input fixed point numbers are equal.
fn eq(a: FixedType, b: FixedType) -> bool {
    return a.mag == b.mag && a.sign == b.sign;
}

/// Cf: FixedTrait::exp docstring 
fn exp(a: FixedType) -> FixedType {
    return exp2(FixedTrait::new(12102203, false) * a); // log2(e) * 2^23 ≈ 12102203
}

/// Cf: FixedTrait::exp2 docstring
fn exp2(a: FixedType) -> FixedType {
    if (a.mag == 0_u128) {
        return FixedTrait::new(ONE, false);
    }

    let (int_part, frac_part) = _split_unsigned(a);
    let int_res = _pow_int(FixedTrait::new_unscaled(2_u128, false), int_part, false);

    let t8 = FixedTrait::new(19_u128, false);
    let t7 = FixedTrait::new(105_u128, false);
    let t6 = FixedTrait::new(1324_u128, false);
    let t5 = FixedTrait::new(11159_u128, false);
    let t4 = FixedTrait::new(80695_u128, false);
    let t3 = FixedTrait::new(465599_u128, false);
    let t2 = FixedTrait::new(2015166_u128, false);
    let t1 = FixedTrait::new(5814540_u128, false);

    let frac_fixed = FixedTrait::new(frac_part, false);
    let r8 = t8 * frac_fixed;
    let r7 = (r8 + t7) * frac_fixed;
    let r6 = (r7 + t6) * frac_fixed;
    let r5 = (r6 + t5) * frac_fixed;
    let r4 = (r5 + t4) * frac_fixed;
    let r3 = (r4 + t3) * frac_fixed;
    let r2 = (r3 + t2) * frac_fixed;
    let r1 = (r2 + t1) * frac_fixed;
    let frac_res = r1 + FixedTrait::new(ONE, false);
    let res_u = int_res * frac_res;

    if (a.sign == true) {
        return FixedTrait::new(ONE, false) / res_u;
    } else {
        return res_u;
    }
}

/// Cf: FixedTrait::floor docstring
fn floor(a: FixedType) -> FixedType {
    let (div_u128, rem_u128) = _split_unsigned(a);

    if (rem_u128 == 0_u128) {
        return a;
    } else if (a.sign == false) {
        return FixedTrait::new_unscaled(div_u128, false);
    } else {
        return FixedTrait::from_unscaled_felt(-1 * div_u128.into() - 1);
    }
}

/// Checks whether the first fixed point number is greater than or equal to the second fixed point number.
///
/// # Arguments
///
/// * `a` - The first fixed point number to compare.
/// * `b` - The second fixed point number to compare.
///
/// # Returns
///
/// * A boolean value that indicates whether the first fixed point number is greater than or equal to the second fixed point number.
fn ge(a: FixedType, b: FixedType) -> bool {
    if (a.sign != b.sign) {
        return !a.sign;
    } else {
        return a.mag == b.mag || (a.mag > b.mag) ^ a.sign;
    }
}

/// Checks whether the first fixed point number is greater than the second fixed point number.
///
/// # Arguments
///
/// * `a` - The first fixed point number to compare.
/// * `b` - The second fixed point number to compare.
///
/// # Returns
///
/// * A boolean value that indicates whether the first fixed point number is greater than the second fixed point number.
fn gt(a: FixedType, b: FixedType) -> bool {
    if (a.sign != b.sign) {
        return !a.sign;
    } else {
        return a.mag != b.mag && (a.mag > b.mag) ^ a.sign;
    }
}

/// Checks whether the first fixed point number is less than or equal to the second fixed point number.
///
/// # Arguments
///
/// * `a` - The first fixed point number to compare.
/// * `b` - The second fixed point number to compare.
///
/// # Returns
///
/// * A boolean value that indicates whether the first fixed point number is less than or equal to the second fixed point number.
fn le(a: FixedType, b: FixedType) -> bool {
    if (a.sign != b.sign) {
        return a.sign;
    } else {
        return a.mag == b.mag || (a.mag < b.mag) ^ a.sign;
    }
}

/// Cf: FixedTrait::ln docstring
fn ln(a: FixedType) -> FixedType {
    return FixedTrait::new(5814540_u128, false) * log2(a); // ln(2) = 0.693...
}

/// Cf: FixedTrait::log2 docstring
fn log2(a: FixedType) -> FixedType {
    check_gas();

    assert(a.sign == false, 'must be positive');

    if (a.mag == ONE) {
        return FixedTrait::new(0_u128, false);
    } else if (a.mag < ONE) {
        // Compute true inverse binary log if 0 < x < 1
        let div = FixedTrait::new_unscaled(1_u128, false) / a;
        return -log2(div);
    }

    let msb_u128 = _msb(a.mag / 2_u128);
    let divisor = _pow_int(FixedTrait::new_unscaled(2_u128, false), msb_u128, false);
    let norm = a / divisor;

    let t8 = FixedTrait::new(76243_u128, true);
    let t7 = FixedTrait::new(1038893_u128, false);
    let t6 = FixedTrait::new(6277679_u128, true);
    let t5 = FixedTrait::new(22135645_u128, false);
    let t4 = FixedTrait::new(50444339_u128, true);
    let t3 = FixedTrait::new(77896489_u128, false);
    let t2 = FixedTrait::new(83945943_u128, true);
    let t1 = FixedTrait::new(68407458_u128, false);
    let t0 = FixedTrait::new(28734280_u128, true);

    let r8 = t8 * norm;
    let r7 = (r8 + t7) * norm;
    let r6 = (r7 + t6) * norm;
    let r5 = (r6 + t5) * norm;
    let r4 = (r5 + t4) * norm;
    let r3 = (r4 + t3) * norm;
    let r2 = (r3 + t2) * norm;
    let r1 = (r2 + t1) * norm;
    return r1 + t0 + FixedTrait::new_unscaled(msb_u128, false);
}

/// Cf: FixedTrait::log10 docstring
fn log10(a: FixedType) -> FixedType {
    return FixedTrait::new(2525223_u128, false) * log2(a); // log10(2) = 0.301...
}

/// Checks whether the first fixed point number is less than the second fixed point number.
///
/// # Arguments
///
/// * `a` - The first fixed point number to compare.
/// * `b` - The second fixed point number to compare.
///
/// # Returns
///
/// * A boolean value that indicates whether the first fixed point number is less than the second fixed point number.
fn lt(a: FixedType, b: FixedType) -> bool {
    if (a.sign != b.sign) {
        return a.sign;
    } else {
        return a.mag != b.mag && (a.mag < b.mag) ^ a.sign;
    }
}

/// Multiplies two fixed point numbers.
///
/// # Arguments
///
/// * `a` - The first fixed point number.
/// * `b` - The second fixed point number.
///
/// # Returns
///
/// * A FixedType value representing the product of the two input numbers.
fn mul(a: FixedType, b: FixedType) -> FixedType {
    check_gas();

    let res_sign = a.sign ^ b.sign;

    // Use u128 to multiply and shift back down
    // TODO: replace if / when there is a felt div_rem supported
    let (high, low) = integer::u128_wide_mul(a.mag, b.mag);
    let res_u128 = high + (low / ONE);

    // Re-apply sign
    return FixedType { mag: res_u128, sign: res_sign };
}

/// Checks whether the first fixed point number is not equal to the second fixed point number.
///
/// # Arguments
///
/// * `a` - The first fixed point number to compare.
/// * `b` - The second fixed point number to compare.
///
/// # Returns
///
/// * A boolean value that indicates whether the first fixed point number is not equal to the second fixed point number.
fn ne(a: FixedType, b: FixedType) -> bool {
    return a.mag != b.mag || a.sign != b.sign;
}

/// Negates a fixed point number.
///
/// # Arguments
///
/// * `a` - The fixed point number to negate.
///
/// # Returns
///
/// * A FixedType value representing the negation of the input number.
fn neg(a: FixedType) -> FixedType {
    if (a.sign == false) {
        return FixedTrait::new(a.mag, true);
    } else {
        return FixedTrait::new(a.mag, false);
    }
}

/// Cf: FixedTrait::pow docstring
fn pow(a: FixedType, b: FixedType) -> FixedType {
    let (div_u128, rem_u128) = _split_unsigned(b);

    // use the more performant integer pow when y is an int
    if (rem_u128 == 0_u128) {
        return _pow_int(a, b.mag / ONE, b.sign);
    }

    // x^y = exp(y*ln(x)) for x > 0 will error for x < 0
    return exp(b * ln(a));
}

/// Cf: FixedTrait::round docstring
fn round(a: FixedType) -> FixedType {
    let (div_u128, rem_u128) = _split_unsigned(a);

    if (HALF <= rem_u128) {
        return FixedTrait::new(ONE * (div_u128 + 1_u128), a.sign);
    } else {
        return FixedTrait::new(ONE * div_u128, a.sign);
    }
}

/// Cf: FixedTrait::sqrt docstring
fn sqrt(a: FixedType) -> FixedType {
    assert(a.sign == false, 'must be positive');
    let root = integer::u128_sqrt(a.mag);
    let scale_root = integer::u128_sqrt(ONE);
    let res_u64 = root * ONE_u64 / scale_root;
    return FixedTrait::new(res_u64.into(), false);
}

/// Cf: FixedTrait::sin docstring
fn sin(a: FixedType) -> FixedType {
    let a1_u128 = a.mag % (2_u128 * PI);
    let whole_rem = a1_u128 / PI;
    let a2 = FixedType { mag: a1_u128 % PI, sign: false };
    let mut partial_sign = false;

    if (whole_rem == 1_u128) {
        partial_sign = true;
    }

    let acc = FixedType { mag: ONE, sign: false };
    let loop_res = a2 * _sin_loop(a2, 7_u128, acc);
    let res_sign = a.sign ^ partial_sign;
    return FixedType { mag: loop_res.mag, sign: res_sign };
}

// Helper function to calculate Taylor series for sin
fn _sin_loop(a: FixedType, i: u128, acc: FixedType) -> FixedType {
    let div_u128 = (2_u128 * i + 2_u128) * (2_u128 * i + 3_u128);
    let term = a * a * acc / FixedTrait::new_unscaled(div_u128, false);
    let new_acc = FixedTrait::new(ONE, false) - term;

    if (i == 0_u128) {
        return new_acc;
    }

    return _sin_loop(a, i - 1_u128, new_acc);
}

/// Cf: FixedTrait::cos docstring
fn cos(a: FixedType) -> FixedType {
    return sin(FixedTrait::new(HALF_PI, false) - a);
}

/// Cf: FixedTrait::asin docstring
// Calculates arcsin(a) for -1 <= a <= 1 (fixed point)
// arcsin(a) = arctan(a / sqrt(1 - a^2))
fn asin(a: FixedType) -> FixedType {
    assert(a.mag <= ONE, 'out of range');
    // when NAN value implementation in tensor 
    // comment assert and uncooment the if statement below
    // if (a < FixedTrait::new_unscaled(1, true)) || (a > FixedTrait::new_unscaled(1, false)) {
    //     return FixedTrait::from_unscaled_felt('nan');
    // }

    if (a.mag == ONE) {
        return FixedTrait::new(HALF_PI, a.sign);
    }

    let div = (FixedTrait::new(ONE, false) - a * a).sqrt();
    return atan(a / div);
}

/// Cf: FixedTrait::acos docstring
// Calculates arccos(a) for -1 <= a <= 1 (fixed point)
// arccos(a) = arcsin(sqrt(1 - a^2)) - arctan identity has discontinuity at zero
fn acos(a: FixedType) -> FixedType {
    assert(a.mag <= ONE, 'out of range');
    let asin_arg = (FixedTrait::new(ONE, false) - a * a).sqrt();
    let asin_res = asin(asin_arg);

    if (a.sign) {
        return FixedTrait::new(PI, false) - asin_res;
    } else {
        return asin_res;
    }
}

/// Subtracts one fixed point number from another.
///
/// # Arguments
///
/// * `a` - The minuend fixed point number.
/// * `b` - The subtrahend fixed point number.
///
/// # Returns
///
/// * A fixed point number representing the result of the subtraction.
fn sub(a: FixedType, b: FixedType) -> FixedType {
    check_gas();
    return FixedTrait::from_felt(a.into() - b.into());
}

/// Returns maximum value between two FixedTrait Points.
///
/// # Arguments
///
/// * `a` - The first fixed point number.
/// * `b` - The second fixed point number.
///
/// # Returns
///
/// * The max FixedTrait Point value .
fn max(a: FixedType, b: FixedType) -> FixedType {
    if (a >= b) {
        return a;
    } else {
        return b;
    }
}

/// Returns minimum value between two FixedTrait Points.
///
/// # Arguments
///
/// * `a` - The first fixed point number.
/// * `b` - The second fixed point number.
///
/// # Returns
///
/// * The min FixedTrait Point value.
fn min(a: FixedType, b: FixedType) -> FixedType {
    if (a <= b) {
        return a;
    } else {
        return b;
    }
}

/// INTERNAL

/// Calculates the most significant bit of a u128 number.
///
/// # Arguments
///
/// * `a` - The u128 number to find the most significant bit of.
///
/// # Returns
///
/// * A u128 value representing the most significant bit.
fn _msb(a: u128) -> u128 {
    check_gas();

    if (a <= ONE) {
        return 0_u128;
    }

    return 1_u128 + _msb(a / 2_u128);
}

/// Calculates the value of x^y for a fixed point number `x` and a signed integer `y`, 
/// and checks for overflow before returning.
///
/// # Arguments
///
/// * `a` - The base fixed point number (x).
/// * `b` - The exponent as a u128 number (y).
/// * `sign` - A boolean value indicating the sign of the exponent.
///
/// # Returns
///
/// * A fixed point number representing the result of x^y.
fn _pow_int(a: FixedType, b: u128, sign: bool) -> FixedType {
    check_gas();

    if (sign == true) {
        return FixedTrait::new(ONE, false) / _pow_int(a, b, false);
    }

    let (div, rem) = integer::u128_safe_divmod(b, integer::u128_as_non_zero(2_u128));

    if (b == 0_u128) {
        return FixedTrait::new(ONE, false);
    } else if (rem == 0_u128) {
        return _pow_int(a * a, div, false);
    } else {
        return a * _pow_int(a * a, div, false);
    }
}

/// Ignores the sign and always returns false.
///
/// # Arguments
///
/// * `a` - The input fixed point number.
///
/// # Returns
///
/// * A tuple of two u128 numbers representing the division and remainder of the input number divided by `ONE`.
fn _split_unsigned(a: FixedType) -> (u128, u128) {
    return integer::u128_safe_divmod(a.mag, integer::u128_as_non_zero(ONE));
}

/// Cf: FixedTrait::sinh docstring 
fn sinh(a: FixedType) -> FixedType {
    let ea = a.exp();
    let num = ea - (FixedTrait::new(ONE, false) / ea);
    let denom = FixedTrait::new_unscaled(2_u128, false);
    num / denom
}

/// Cf: FixedTrait::tanh docstring 
fn tanh(a: FixedType) -> FixedType {
    let ea = a.exp();
    let num = ea - (FixedTrait::new(ONE, false) / ea);
    let denom = ea + (FixedTrait::new(ONE, false) / ea);
    num / denom
}

/// Cf: FixedTrait::cosh docstring 
fn cosh(a: FixedType) -> FixedType {
    let ea = a.exp();
    let num = ea + (FixedTrait::new(ONE, false) / ea);
    let denom = FixedTrait::new_unscaled(2_u128, false);
    num / denom
}

/// Cf: FixedTrait::acosh docstring 
fn acosh(a: FixedType) -> FixedType {
    //we first check to see if a < 1.
    assert(a >= FixedTrait::new_unscaled(1, false), 'a must be >= 1');
    let root = (a * a - FixedTrait::new(ONE, false)).sqrt();
    let answer = (a + root).ln();
    answer
}

/// Cf: FixedTrait::asinh docstring 
fn asinh(a: FixedType) -> FixedType {
    let root = (a * a + FixedTrait::new(ONE, false)).sqrt();
    let result = (a + root).ln();
    result
}

/// Cf: FixedTrait::atan docstring 
fn atan(a: FixedType) -> FixedType {
    let mut at = a.abs();
    let mut shift = false;
    let mut invert = false;

    // Invert value when a > 1
    if (at.mag > ONE) {
        at = FixedTrait::new(ONE, false) / at;
        invert = true;
    }

    // Account for lack of precision in polynomaial when a > 0.7
    if (at.mag > 5872026_u128) {
        let sqrt3_3 = FixedTrait::new(4843165_u128, false); // sqrt(3) / 3
        at = (at - sqrt3_3) / (FixedTrait::new(ONE, false) + at * sqrt3_3);
        shift = true;
    }

    let t10 = FixedTrait::new(15363_u128, true);
    let t9 = FixedTrait::new(392482_u128, true);
    let t8 = FixedTrait::new(1629065_u128, false);
    let t7 = FixedTrait::new(2197820_u128, true);
    let t6 = FixedTrait::new(366692_u128, false);
    let t5 = FixedTrait::new(1594324_u128, false);
    let t4 = FixedTrait::new(11518_u128, false);
    let t3 = FixedTrait::new(2797104_u128, true);
    let t2 = FixedTrait::new(34_u128, false);
    let t1 = FixedTrait::new(8388608_u128, false);

    let r10 = t10 * at;
    let r9 = (r10 + t9) * at;
    let r8 = (r9 + t8) * at;
    let r7 = (r8 + t7) * at;
    let r6 = (r7 + t6) * at;
    let r5 = (r6 + t5) * at;
    let r4 = (r5 + t4) * at;
    let r3 = (r4 + t3) * at;
    let r2 = (r3 + t2) * at;
    let mut res = (r2 + t1) * at;

    // Adjust for sign change, inversion, and shift
    if (shift) {
        res = res + FixedTrait::new(4392265_u128, false); // pi / 6
    }

    if (invert) {
        res = res - FixedTrait::new(HALF_PI, false);
    }

    return FixedTrait::new(res.mag, a.sign);
}

