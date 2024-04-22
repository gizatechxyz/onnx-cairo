use orion::operators::tensor::core::Tensor;
use orion::operators::nn::core::NNTrait;
use orion::operators::nn::functional;
use orion::numbers::fixed_point::implementations::fp64x64::core::{FP64x64, FP64x64Impl};
use orion::operators::tensor::implementations::tensor_fp64x64::{
    FP64x64Tensor, FP64x64TensorDiv, FP64x64TensorAdd, FP64x64TensorMul
};
use orion::operators::nn::{AUTO_PAD, MODE, PADDING_MODE};

impl FP64x64NN of NNTrait<FP64x64> {
    fn relu(tensor: @Tensor<FP64x64>) -> Tensor<FP64x64> {
        functional::relu::relu(*tensor)
    }

    fn sigmoid(tensor: @Tensor<FP64x64>) -> Tensor<FP64x64> {
        functional::sigmoid::sigmoid(*tensor)
    }

    fn softmax(tensor: @Tensor<FP64x64>, axis: Option<i32>) -> Tensor<FP64x64> {
        functional::softmax::softmax(tensor, axis)
    }

    fn softmax_zero(tensor: @Tensor<FP64x64>, axis: usize) -> Tensor<FP64x64> {
        functional::softmax_zero::softmax_zero(tensor, axis)
    }

    fn logsoftmax(tensor: @Tensor<FP64x64>, axis: usize) -> Tensor<FP64x64> {
        functional::logsoftmax::logsoftmax(tensor, axis)
    }

    fn softsign(tensor: @Tensor<FP64x64>) -> Tensor<FP64x64> {
        functional::softsign::softsign(*tensor)
    }

    fn softplus(tensor: @Tensor<FP64x64>) -> Tensor<FP64x64> {
        functional::softplus::softplus(*tensor)
    }

    fn linear(
        inputs: Tensor<FP64x64>, weights: Tensor<FP64x64>, bias: Tensor<FP64x64>
    ) -> Tensor<FP64x64> {
        functional::linear::linear(inputs, weights, bias)
    }

    fn leaky_relu(inputs: @Tensor<FP64x64>, alpha: @FP64x64) -> Tensor<FP64x64> {
        functional::leaky_relu::leaky_relu(*inputs, alpha)
    }

    fn thresholded_relu(tensor: @Tensor<FP64x64>, alpha: @FP64x64) -> Tensor<FP64x64> {
        functional::thresholded_relu::thresholded_relu(*tensor, alpha)
    }

    fn hard_sigmoid(tensor: @Tensor<FP64x64>, alpha: @FP64x64, beta: @FP64x64) -> Tensor<FP64x64> {
        functional::hard_sigmoid::hard_sigmoid(*tensor, alpha, beta)
    }

    fn depth_to_space(
        tensor: @Tensor<FP64x64>, blocksize: usize, mode: felt252
    ) -> Tensor<FP64x64> {
        functional::depth_to_space::depth_to_space(*tensor, blocksize, mode)
    }

    fn space_to_depth(tensor: @Tensor<FP64x64>, blocksize: usize) -> Tensor<FP64x64> {
        functional::space_to_depth::space_to_depth(*tensor, blocksize)
    }

    fn gemm(
        A: Tensor<FP64x64>,
        B: Tensor<FP64x64>,
        C: Option<Tensor<FP64x64>>,
        alpha: Option<FP64x64>,
        beta: Option<FP64x64>,
        transA: bool,
        transB: bool
    ) -> Tensor<FP64x64> {
        functional::gemm::gemm(A, B, C, alpha, beta, transA, transB)
    }

    fn grid_sample(
        X: @Tensor<FP64x64>,
        grid: @Tensor<FP64x64>,
        align_corner: Option<usize>,
        mode: Option<MODE>,
        padding_mode: Option<PADDING_MODE>,
    ) -> Tensor<FP64x64> {
        functional::grid_sample::grid_sample(X, grid, align_corner, mode, padding_mode)
    }

    fn col2im(
        data: @Tensor<FP64x64>,
        image_shape: Span<usize>,
        block_shape: Span<usize>,
        dilations: Option<Span<usize>>,
        pads: Option<Span<usize>>,
        strides: Option<Span<usize>>,
    ) -> Tensor<FP64x64> {
        functional::col2im::col2im(data, image_shape, block_shape, dilations, pads, strides,)
    }

    fn conv_transpose(
        X: @Tensor<FP64x64>,
        W: @Tensor<FP64x64>,
        B: Option<@Tensor<FP64x64>>,
        auto_pad: Option<functional::conv_transpose::AUTO_PAD>,
        dilations: Option<Span<usize>>,
        group: Option<usize>,
        kernel_shape: Option<Span<usize>>,
        output_padding: Option<Span<usize>>,
        output_shape: Option<Span<usize>>,
        pads: Option<Span<usize>>,
        strides: Option<Span<usize>>,
    ) -> Tensor<FP64x64> {
        functional::conv_transpose::conv_transpose(
            X,
            W,
            B,
            auto_pad,
            dilations,
            group,
            kernel_shape,
            output_padding,
            output_shape,
            pads,
            strides
        )
    }

    fn conv(
        X: @Tensor<FP64x64>,
        W: @Tensor<FP64x64>,
        B: Option<Span<FP64x64>>,
        auto_pad: Option<AUTO_PAD>,
        dilations: Option<Span<usize>>,
        group: Option<usize>,
        kernel_shape: Option<Span<usize>>,
        pads: Option<Span<usize>>,
        strides: Option<Span<usize>>,
    ) -> Tensor<FP64x64> {
        functional::conv::conv(X, W, B, auto_pad, dilations, group, kernel_shape, pads, strides)
    }

    fn global_average_pool(tensor: @Tensor<FP64x64>) -> Tensor<FP64x64> {
        functional::global_average_pool::global_average_pool(*tensor)
    }

    fn conv_integer(
        X: @Tensor<FP64x64>,
        W: @Tensor<FP64x64>,
        X_zero_point: Option<@Tensor<FP64x64>>,
        W_zero_point: Option<@Tensor<FP64x64>>,
        auto_pad: Option<functional::conv::AUTO_PAD>,
        dilations: Option<Span<usize>>,
        group: Option<usize>,
        kernel_shape: Option<Span<usize>>,
        pads: Option<Span<usize>>,
        strides: Option<Span<usize>>,
    ) -> Tensor<usize> {
        panic(array!['not supported!'])
    }

    fn max_pool(
        X: @Tensor<FP64x64>,
        auto_pad: Option<AUTO_PAD>,
        ceil_mode: Option<usize>,
        dilations: Option<Span<usize>>,
        kernel_shape: Span<usize>,
        pads: Option<Span<usize>>,
        storage_order: Option<usize>,
        strides: Option<Span<usize>>,
        output_len: usize,
    ) -> (Tensor<FP64x64>, Option<Tensor<usize>>) {
        functional::max_pool::max_pool(
            X,
            auto_pad,
            ceil_mode,
            dilations,
            kernel_shape,
            pads,
            storage_order,
            strides,
            output_len
        )
    }
    fn deform_conv(
        X: @Tensor<FP64x64>,
        W: @Tensor<FP64x64>,
        offset: @Tensor<FP64x64>,
        B: Option<Span<FP64x64>>,
        mask: Option<Tensor<FP64x64>>,
        dilations: Option<Span<usize>>,
        group: Option<usize>,
        kernel_shape: Option<Span<usize>>,
        offset_group: Option<usize>,
        pads: Option<Span<usize>>,
        strides: Option<Span<usize>>,
    ) -> Tensor<FP64x64> {
        functional::deform_conv::deform_conv(
            X, W, offset, B, mask, dilations, group, kernel_shape, offset_group, pads, strides,
        )
    }

    fn lp_pool(
        X: @Tensor<FP64x64>,
        auto_pad: Option<AUTO_PAD>,
        ceil_mode: Option<usize>,
        dilations: Option<Span<usize>>,
        kernel_shape: Span<usize>,
        p: Option<usize>,
        pads: Option<Span<usize>>,
        strides: Option<Span<usize>>,
        count_include_pad: Option<usize>,
    ) -> Tensor<FP64x64> {
        functional::lp_pool::lp_pool(
            X, auto_pad, ceil_mode, dilations, kernel_shape, p, pads, strides, count_include_pad
        )
    }
}
