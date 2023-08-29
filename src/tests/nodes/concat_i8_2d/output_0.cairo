use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor, ExtraParams};
use orion::numbers::fixed_point::core::{FixedTrait, FixedType, FixedImpl};
use orion::operators::tensor::implementations::impl_tensor_fp::Tensor_fp;

fn output_0() -> Tensor<FixedType> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(4);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FixedType { mag: 0, sign: false });
    data.append(FixedType { mag: 1, sign: false });
    data.append(FixedType { mag: 2, sign: false });
    data.append(FixedType { mag: 3, sign: false });
    data.append(FixedType { mag: 4, sign: false });
    data.append(FixedType { mag: 5, sign: false });
    data.append(FixedType { mag: 6, sign: false });
    data.append(FixedType { mag: 7, sign: false });

    let extra = ExtraParams { fixed_point: Option::Some(FixedImpl::FP16x16) };
    TensorTrait::new(shape.span(), data.span(), Option::Some(extra))
}