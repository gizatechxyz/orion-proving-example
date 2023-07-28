use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor, ExtraParams};
use orion::operators::tensor::implementations::impl_tensor_i32::Tensor_i32;
use orion::numbers::fixed_point::core::FixedImpl;
use orion::numbers::signed_integer::i32::i32;

fn fc2_bias() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(10);
    let mut data = ArrayTrait::<i32>::new();
    data.append(i32 { mag: 26, sign: true });
    data.append(i32 { mag: 818, sign: false });
    data.append(i32 { mag: 371, sign: false });
    data.append(i32 { mag: 148, sign: true });
    data.append(i32 { mag: 280, sign: true });
    data.append(i32 { mag: 702, sign: false });
    data.append(i32 { mag: 664, sign: true });
    data.append(i32 { mag: 439, sign: false });
    data.append(i32 { mag: 1380, sign: true });
    data.append(i32 { mag: 118, sign: false });
let extra = ExtraParams { fixed_point: Option::Some(FixedImpl::FP16x16(())) }; 
    TensorTrait::new(shape.span(), data.span(), Option::Some(extra))
}
