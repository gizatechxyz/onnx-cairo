# Compatibility

To see the full list of available ONNX Operators refer to [this table](https://github.com/onnx/onnx/blob/main/docs/Operators.md).

You can see below the list of current supported ONNX Operators:

|                              Operator                               |     Implemented      |
| :-----------------------------------------------------------------: | :------------------: |
|             [MatMul](operators/tensor/tensor.matmul.md)             | :white\_check\_mark: |
|         [MatMulInteger](operators/tensor/tensor.matmul.md)          | :white\_check\_mark: |
|           [Add](operators/tensor/#arithmetic-operations)            | :white\_check\_mark: |
|           [Sub](operators/tensor/#arithmetic-operations)            | :white\_check\_mark: |
|           [Mul](operators/tensor/#arithmetic-operations)            | :white\_check\_mark: |
|           [Div](operators/tensor/#arithmetic-operations)            | :white\_check\_mark: |
|              [Equal](operators/tensor/tensor.equal.md)              | :white\_check\_mark: |
|            [Greater](operators/tensor/tensor.greater.md)            | :white\_check\_mark: |
|     [GreaterOrEqual](operators/tensor/tensor.greater\_equal.md)     | :white\_check\_mark: |
|               [Less](operators/tensor/tensor.less.md)               | :white\_check\_mark: |
|        [LessOrEqual](operators/tensor/tensor.less\_equal.md)        | :white\_check\_mark: |
|                [Abs](operators/tensor/tensor.abs.md)                | :white\_check\_mark: |
|                [Neg](operators/tensor/tensor.neg.md)                | :white\_check\_mark: |
|               [Ceil](operators/tensor/tensor.ceil.md)               | :white\_check\_mark: |
|                [Exp](operators/tensor/tensor.exp.md)                | :white\_check\_mark: |
|                [Ln](operators/tensor/tensor.log.md)                 | :white\_check\_mark: |
|            [Reshape](operators/tensor/tensor.reshape.md)            | :white\_check\_mark: |
|          [Transpose](operators/tensor/tensor.transpose.md)          | :white\_check\_mark: |
|             [ArgMax](operators/tensor/tensor.argmax.md)             | :white\_check\_mark: |
|             [ArgMin](operators/tensor/tensor.argmin.md)             | :white\_check\_mark: |
|         [ReduceSum](operators/tensor/tensor.reduce\_sum.md)         | :white\_check\_mark: |
|             [CumSum](operators/tensor/tensor.cumsum.md)             | :white\_check\_mark: |
|                [Cos](operators/tensor/tensor.cos.md)                | :white\_check\_mark: |
|                [Sin](operators/tensor/tensor.sin.md)                | :white\_check\_mark: |
|               [Asin](operators/tensor/tensor.asin.md)               | :white\_check\_mark: |
|            [Flatten](operators/tensor/tensor.flatten.md)            | :white\_check\_mark: |
|             [Relu](operators/neural-network/nn.relu.md)             | :white\_check\_mark: |
|       [LeakyRelu](operators/neural-network/nn.leaky\_relu.md)       | :white\_check\_mark: |
| [ThresholdedRelu](operators/neural-network/nn.thresholded\_relu.md) | :white\_check\_mark: |
|          [Sigmoid](operators/neural-network/nn.sigmoid.md)          | :white\_check\_mark: |
|          [Softmax](operators/neural-network/nn.softmax.md)          | :white\_check\_mark: |
|       [LogSoftmax](operators/neural-network/nn.logsoftmax.md)       | :white\_check\_mark: |
|         [Softsign](operators/neural-network/nn.softsign.md)         | :white\_check\_mark: |
|         [Softplus](operators/neural-network/nn.softplus.md)         | :white\_check\_mark: |
|           [Linear](operators/neural-network/nn.linear.md)           | :white\_check\_mark: |
|     [HardSigmoid](operators/neural-network/nn.hard\_sigmoid.md)     | :white\_check\_mark: |
|               [Sinh](operators/tensor/tensor.sinh.md)               | :white\_check\_mark: |
|              [Asinh](operators/tensor/tensor.asinh.md)              | :white\_check\_mark: |
|              [Atanh](operators/tensor/tensor.atanh.md)              | :white\_check\_mark: |
|               [Cosh](operators/tensor/tensor.cosh.md)               | :white\_check\_mark: |
|              [ACosh](operators/tensor/tensor.acosh.md)              | :white\_check\_mark: |
|               [Tanh](operators/tensor/tensor.tanh.md)               | :white\_check\_mark: |
|               [Acos](operators/tensor/tensor.acos.md)               | :white\_check\_mark: |
|               [Sqrt](operators/tensor/tensor.sqrt.md)               | :white\_check\_mark: |
|             [Onehot](operators/tensor/tensor.onehot.md)             | :white\_check\_mark: |
|              [Slice](operators/tensor/tensor.slice.md)              | :white\_check\_mark: |
|             [Concat](operators/tensor/tensor.concat.md)             | :white\_check\_mark: |
|             [Gather](operators/tensor/tensor.gather.md)             | :white\_check\_mark: |
|    [QuantizeLinear](operators/tensor/tensor.quantize\_linear.md)    | :white\_check\_mark: |
|   [DequantizeLinear](operators/tensor/tensor.quantize\_linear.md)   | :white\_check\_mark: |
|   [QLinearMatmul](operators/tensor/tensor.qlinear\_matmul.md)   | :white\_check\_mark: |
|            [Nonzero](operators/tensor/tensor.nonzero.md)            | :white\_check\_mark: |
|            [Squeeze](operators/tensor/tensor.squeeze.md)            | :white\_check\_mark: |
|          [Unsqueeze](operators/tensor/tensor.unsqueeze.md)          | :white\_check\_mark: |
|               [Sign](operators/tensor/tensor.sign.md)               | :white\_check\_mark: |
|               [Clip](operators/tensor/tensor.clip.md)               | :white\_check\_mark: |
|           [Identity](operators/tensor/tensor.identity.md)           | :white\_check\_mark: |
|                [And](operators/tensor/tensor.and.md)                | :white\_check\_mark: |
|                [Xor](operators/tensor/tensor.xor.md)                | :white\_check\_mark: |
|                 [Or](operators/tensor/tensor.or.md)                 | :white\_check\_mark: |
|             [Gemm](operators/neural-network/nn.gemm.md)             | :white\_check\_mark: |
|    [MinInTensor](operators/tensor/tensor.min\_in\_tensor.md)        | :white\_check\_mark: |
|                [Min](operators/tensor/tensor.min.md)                | :white\_check\_mark: |
|             [Where](operators/tensor/tensor.where.md)               | :white\_check\_mark: |
|             [Round](operators/tensor/tensor.round.md)               | :white\_check\_mark: |
|      [MaxInTensor](operators/tensor/tensor.max\_in\_tensor.md)      | :white\_check\_mark: |
|                 [Max](operators/tensor/tensor.max.md)               | :white\_check\_mark: |
|                 [Size](operators/tensor/tensor.size.md)             | :white\_check\_mark: |

Current Operators support: **62/156 (39%)**
