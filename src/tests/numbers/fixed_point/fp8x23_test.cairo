use option::OptionTrait;
use traits::Into;

use orion::numbers::fixed_point::implementations::impl_8x23::{
    ONE, _felt_abs, _felt_sign, FP8x23Impl, FP8x23Into, FP8x23Add, FP8x23AddEq, FP8x23Sub,
    FP8x23SubEq, FP8x23Mul, FP8x23MulEq, FP8x23Div, FP8x23DivEq, FP8x23PartialOrd, FP8x23PartialEq,
    PI, HALF_PI
};
use orion::numbers::fixed_point::core::{FixedTrait, FixedType};
use orion::numbers::fixed_point::core;

#[test]
fn test_into() {
    let a = FixedTrait::from_unscaled_felt(5);
    assert(a.into() == 5 * ONE.into(), 'invalid result');
}

#[test]
#[should_panic]
fn test_overflow_large() {
    let too_large = 0x100000000000000000000000000000000;
    FixedTrait::from_felt(too_large);
}

#[test]
#[should_panic]
fn test_overflow_small() {
    let too_small = -0x100000000000000000000000000000000;
    FixedTrait::from_felt(too_small);
}

#[test]
fn test_sign() {
    let min = -1809251394333065606848661391547535052811553607665798349986546028067936010240;
    let max = 1809251394333065606848661391547535052811553607665798349986546028067936010240;
    assert(_felt_sign(min) == true, 'invalid result');
    assert(_felt_sign(-1) == true, 'invalid result');
    assert(_felt_sign(0) == false, 'invalid result');
    assert(_felt_sign(1) == false, 'invalid result');
    assert(_felt_sign(max) == false, 'invalid result');
}

#[test]
fn test_abs() {
    assert(_felt_abs(5) == 5, 'abs of pos should be pos');
    assert(_felt_abs(-5) == 5, 'abs of neg should be pos');
    assert(_felt_abs(0) == 0, 'abs of 0 should be 0');
}

#[test]
fn test_ceil() {
    let a = FixedTrait::from_felt(24326963); // 2.9
    assert(a.ceil().into() == 3 * ONE.into(), 'invalid pos decimal');
}

#[test]
fn test_floor() {
    let a = FixedTrait::from_felt(24326963); // 2.9
    assert(a.floor().into() == 2 * ONE.into(), 'invalid pos decimal');
}

#[test]
fn test_round() {
    let a = FixedTrait::from_felt(24326963); // 2.9
    assert(a.round().into() == 3 * ONE.into(), 'invalid pos decimal');
}

#[test]
#[should_panic]
fn test_sqrt_fail() {
    let a = FixedTrait::from_unscaled_felt(-25);
    a.sqrt();
}

#[test]
fn test_sqrt() {
    let a = FixedTrait::from_unscaled_felt(0);
    assert(a.sqrt().into() == 0, 'invalid zero root');
}

#[test]
#[available_gas(10000000)]
fn test_pow() {
    let a = FixedTrait::from_unscaled_felt(3);
    let b = FixedTrait::from_unscaled_felt(4);
    assert(a.pow(b).into() == 81 * ONE.into(), 'invalid pos base power');
}

#[test]
#[available_gas(10000000)]
fn test_exp() {
    let a = FixedTrait::from_unscaled_felt(2);
    assert(a.exp().into() == 61983880, 'invalid exp of 2'); // 7.389056317241236
}

#[test]
#[available_gas(10000000)]
fn test_exp2() {
    let a = FixedTrait::from_unscaled_felt(2);
    assert(a.exp2().into() == 33554432, 'invalid exp2 of 2'); // 3.99999957248 = 4
}

#[test]
#[available_gas(10000000)]
fn test_ln() {
    let a = FixedTrait::from_unscaled_felt(1);
    assert(a.ln().into() == 0, 'invalid ln of 1');
}

#[test]
#[available_gas(10000000)]
fn test_log2() {
    let a = FixedTrait::from_unscaled_felt(31);
    assert(a.log2().into() == 41558887, 'invalid log2'); // 4.954194635152817
}

#[test]
#[available_gas(10000000)]
fn test_log10() {
    let a = FixedTrait::from_unscaled_felt(30);
    assert(a.log10().into() == 12391003, 'invalid log10'); // 1.477120757102966
}

#[test]
fn test_eq() {
    let a = FixedTrait::from_unscaled_felt(25);
    let b = FixedTrait::from_unscaled_felt(25);
    let c = a == b;
    assert(c == true, 'invalid result');
}

#[test]
fn test_ne_() {
    let a = FixedTrait::from_unscaled_felt(25);
    let b = FixedTrait::from_unscaled_felt(25);
    let c = a != b;
    assert(c == false, 'invalid result');

    let a = FixedTrait::from_unscaled_felt(25);
    let b = FixedTrait::from_unscaled_felt(-25);
    let c = a != b;
    assert(c == true, 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn test_add() {
    let a = FixedTrait::from_unscaled_felt(1);
    let b = FixedTrait::from_unscaled_felt(2);
    assert(a + b == FixedTrait::from_unscaled_felt(3), 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn test_add_eq() {
    let mut a = FixedTrait::from_unscaled_felt(1);
    let b = FixedTrait::from_unscaled_felt(2);
    a += b;
    assert(a.into() == 3 * ONE.into(), 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn test_sub() {
    let a = FixedTrait::from_unscaled_felt(5);
    let b = FixedTrait::from_unscaled_felt(2);
    let c = a - b;
    assert(c.into() == 3 * ONE.into(), 'false result invalid');
}

#[test]
#[available_gas(2000000)]
fn test_sub_eq() {
    let mut a = FixedTrait::from_unscaled_felt(5);
    let b = FixedTrait::from_unscaled_felt(2);
    a -= b;
    assert(a.into() == 3 * ONE.into(), 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn test_mul_pos() {
    let a = FixedTrait::from_unscaled_felt(5);
    let b = FixedTrait::from_unscaled_felt(2);
    let c = a * b;
    assert(c.into() == 10 * ONE.into(), 'invalid result');

    let a = FixedTrait::from_unscaled_felt(9);
    let b = FixedTrait::from_unscaled_felt(9);
    let c = a * b;
    assert(c.into() == 81 * ONE.into(), 'invalid result');

    let a = FixedTrait::from_felt(10485760); // 1.25
    let b = FixedTrait::from_felt(19293798); // 2.3
    let c = a * b;
    assert(c.into() == 24117247, 'invalid result'); // 2.875

    let a = FixedTrait::from_unscaled_felt(0);
    let b = FixedTrait::from_felt(19293798); // 2.3
    let c = a * b;
    assert(c.into() == 0, 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn test_mul_neg() {
    let a = FixedTrait::from_unscaled_felt(5);
    let b = FixedTrait::from_unscaled_felt(-2);
    let c = a * b;
    assert(c.into() == -10 * ONE.into(), 'true result invalid');
}

#[test]
#[available_gas(2000000)]
fn test_mul_eq() {
    let mut a = FixedTrait::from_unscaled_felt(5);
    let b = FixedTrait::from_unscaled_felt(-2);
    a *= b;
    assert(a.into() == -10 * ONE.into(), 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn test_div_() {
    let a = FixedTrait::from_unscaled_felt(10);
    let b = FixedTrait::from_felt(24326963); // 2.9
    let c = a / b;
    assert(c.into() == 28926234, 'invalid pos decimal'); // 3.4482758620689653

    let a = FixedTrait::from_unscaled_felt(10);
    let b = FixedTrait::from_unscaled_felt(5);
    let c = a / b;
    assert(c.into() == 16777216, 'invalid pos integer'); // 2

    let a = FixedTrait::from_unscaled_felt(-2);
    let b = FixedTrait::from_unscaled_felt(5);
    let c = a / b;
    assert(c.into() == -3355443, 'invalid neg decimal'); // -0.4

    let a = FixedTrait::from_unscaled_felt(-1);
    let b = FixedTrait::from_unscaled_felt(12);
    let c = a / b;
    assert(c.into() == -699050, 'invalid neg decimal'); // -0.08333333333333333

    let a = FixedTrait::from_unscaled_felt(12);
    let b = FixedTrait::from_unscaled_felt(-10);
    let c = a / b;
    assert(c.into() == -10066329, 'invalid neg decimal'); // -1.2
}

#[test]
fn test_le() {
    let a = FixedTrait::from_unscaled_felt(1);
    let b = FixedTrait::from_unscaled_felt(0);
    let c = FixedTrait::from_unscaled_felt(-1);

    assert(a <= a, 'a <= a');
    assert(a <= b == false, 'a <= b');
    assert(a <= c == false, 'a <= c');

    assert(b <= a, 'b <= a');
    assert(b <= b, 'b <= b');
    assert(b <= c == false, 'b <= c');

    assert(c <= a, 'c <= a');
    assert(c <= b, 'c <= b');
    assert(c <= c, 'c <= c');
}

#[test]
fn test_lt() {
    let a = FixedTrait::from_unscaled_felt(1);
    let b = FixedTrait::from_unscaled_felt(0);
    let c = FixedTrait::from_unscaled_felt(-1);

    assert(a < a == false, 'a < a');
    assert(a < b == false, 'a < b');
    assert(a < c == false, 'a < c');

    assert(b < a, 'b < a');
    assert(b < b == false, 'b < b');
    assert(b < c == false, 'b < c');

    assert(c < a, 'c < a');
    assert(c < b, 'c < b');
    assert(c < c == false, 'c < c');
}

#[test]
fn test_ge() {
    let a = FixedTrait::from_unscaled_felt(1);
    let b = FixedTrait::from_unscaled_felt(0);
    let c = FixedTrait::from_unscaled_felt(-1);

    assert(a >= a, 'a >= a');
    assert(a >= b, 'a >= b');
    assert(a >= c, 'a >= c');

    assert(b >= a == false, 'b >= a');
    assert(b >= b, 'b >= b');
    assert(b >= c, 'b >= c');

    assert(c >= a == false, 'c >= a');
    assert(c >= b == false, 'c >= b');
    assert(c >= c, 'c >= c');
}

#[test]
fn test_gt() {
    let a = FixedTrait::from_unscaled_felt(1);
    let b = FixedTrait::from_unscaled_felt(0);
    let c = FixedTrait::from_unscaled_felt(-1);

    assert(a > a == false, 'a > a');
    assert(a > b, 'a > b');
    assert(a > c, 'a > c');

    assert(b > a == false, 'b > a');
    assert(b > b == false, 'b > b');
    assert(b > c, 'b > c');

    assert(c > a == false, 'c > a');
    assert(c > b == false, 'c > b');
    assert(c > c == false, 'c > c');
}

#[test]
#[available_gas(10000000)]
fn test_sin() {
    let a = FixedTrait::new(HALF_PI, false);
    assert(a.sin().into() == 8388608, 'invalid half pi');

    let a = FixedTrait::new(HALF_PI / 2_u128, false);
    assert(a.sin().into() == 5931641, 'invalid quarter pi'); // 0.7071067811865475

    let a = FixedTrait::new(PI, false);
    assert(a.sin().into() == 0, 'invalid pi');

    let a = FixedTrait::new(HALF_PI, true);
    assert(a.sin().into() == -8388608, 'invalid neg half pi'); // 0.9999999999939766

    let a = FixedTrait::new_unscaled(17_u128, false);
    assert(a.sin().into() == -8064787, 'invalid 17'); // -0.9613974918795568
}

#[test]
#[available_gas(10000000)]
fn test_cos() {
    let a = FixedTrait::new(HALF_PI, false);
    assert(a.cos().into() == 0, 'invalid half pi');

    let a = FixedTrait::new(HALF_PI / 2_u128, false);
    assert(a.cos().into() == 5931641, 'invalid quarter pi'); // 0.707106...

    let a = FixedTrait::new(PI, false);
    assert(a.cos().into() == -8388608, 'invalid pi'); // -1

    let a = FixedTrait::new(HALF_PI, true);
    assert(a.cos().into() == -0, 'invalid neg half pi'); // -0.000...

    let a = FixedTrait::new_unscaled(17_u128, false);
    assert(a.cos().into() == -2308236, 'invalid 17'); // -0.27516...

    let a = FixedTrait::new_unscaled(17_u128, true);
    assert(a.cos().into() == -2308239, 'invalid -17'); // -0.27516...
}

#[test]
#[available_gas(100000000)]
fn test_asin() {
    let a = FixedTrait::new(ONE, false);
    assert(a.asin().into() == 13176794, 'invalid one'); // PI / 2

    let a: FixedType = FixedTrait::new(ONE / 2_u128, false);
    assert(a.asin().into() == 4392279, 'invalid half'); // 0.523...

    let a = FixedTrait::new(0_u128, false);
    assert(a.asin().into() == 0, 'invalid zero');

    let a = FixedTrait::new(ONE / 2_u128, true);
    assert(a.asin().into() == -4392279, 'invalid neg half');

    let a = FixedTrait::new(ONE, true);
    assert(a.asin().into() == -13176794, 'invalid neg one'); // -PI / 2
}

#[test]
#[available_gas(10000000)]
fn test_sinh() {
    let a = FixedTrait::from_unscaled_felt(1);
    assert(a.sinh().into() == 9858301, 'invalid sinh of 1');
}

#[test]
#[available_gas(10000000)]
fn test_tanh() {
    let a = FixedTrait::from_unscaled_felt(1);
    assert(a.tanh().into() == 6388714, 'invalid tanh of 1');
}

#[test]
#[available_gas(10000000)]
fn test_cosh() {
    let a = FixedTrait::from_unscaled_felt(1);
    assert(a.cosh().into() == 12944297, 'invalid cosh of 1');
}

#[test]
#[available_gas(10000000)]
fn test_acosh_1() {
    let a = FixedTrait::from_unscaled_felt(1);
    assert(a.acosh().into() == 0, 'invalid cosh of 1');
}

#[test]
#[available_gas(10000000)]
fn test_acosh_2() {
    let a = FixedTrait::from_unscaled_felt(2);
    assert(a.acosh().into() == 11047444, 'invalid cosh of 2');
}

#[test]
#[available_gas(10000000)]
#[should_panic]
fn test_acosh_zero() {
    let a = FixedTrait::from_unscaled_felt(0);
    a.acosh();
}

#[test]
#[available_gas(10000000)]
fn test_asinh() {
    let a = FixedTrait::from_unscaled_felt(1);
    assert(a.asinh().into() == 7394022, 'invalid sinh of 1');
}

#[test]
#[available_gas(10000000)]
fn test_atan() {
    let a = FixedTrait::new(2_u128 * ONE, false);
    assert(a.atan().into() == 9287436, 'invalid two'); // 1.1071...

    let a = FixedTrait::new(ONE, false);
    assert(a.atan().into() == 6588397, 'invalid one'); // 0.7853...

    let a = FixedTrait::new(ONE / 2_u128, false);
    assert(a.atan().into() == 3889358, 'invalid half'); // 0.4636...

    let a = FixedTrait::new(0_u128, false);
    assert(a.atan().into() == 0, 'invalid zero'); // 0

    let a = FixedTrait::new(ONE / 2_u128, true);
    assert(a.atan().into() == -3889358, 'invalid neg half'); // -0.4636...

    let a = FixedTrait::new(ONE, true);
    assert(a.atan().into() == -6588397, 'invalid neg one'); // -0.7853...

    let a = FixedTrait::new(2_u128 * ONE, true);
    assert(a.atan().into() == -9287436, 'invalid neg two'); // -1.1071...
}

#[test]
#[available_gas(100000000)]
fn test_acos() {
    let a = FixedTrait::new(ONE, false);
    assert(a.acos().into() == 0, 'invalid one');

    let a = FixedTrait::new(ONE / 2_u128, false);
    assert(a.acos().into() == 8784515, 'invalid half'); // 1.0471975506263043

    let a = FixedTrait::new(0_u128, false);
    assert(a.acos().into() == 13176794, 'invalid zero'); // PI / 2

    let a = FixedTrait::new(ONE / 2_u128, true);
    assert(a.acos().into() == 17569074, 'invalid neg half'); // 2.094395102963489

    let a = FixedTrait::new(ONE, true);
    assert(a.acos().into() == 26353589, 'invalid neg one'); // PI
}

