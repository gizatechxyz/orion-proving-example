use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor, ExtraParams};
use orion::operators::tensor::implementations::impl_tensor_i32::Tensor_i32;
use orion::numbers::fixed_point::core::FixedImpl;
use orion::numbers::signed_integer::i32::i32;

fn fc1_bias() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(10);
    let mut data = ArrayTrait::<i32>::new();
    data.append(i32 { mag: 5982, sign: true });
    data.append(i32 { mag: 4189, sign: false });
    data.append(i32 { mag: 504, sign: false });
    data.append(i32 { mag: 3605, sign: false });
    data.append(i32 { mag: 3093, sign: false });
    data.append(i32 { mag: 1267, sign: true });
    data.append(i32 { mag: 8491, sign: false });
    data.append(i32 { mag: 7719, sign: false });
    data.append(i32 { mag: 706, sign: false });
    data.append(i32 { mag: 509, sign: false });
let extra = ExtraParams { fixed_point: Option::Some(FixedImpl::FP16x16(())) }; 
    TensorTrait::new(shape.span(), data.span(), Option::Some(extra))
}
