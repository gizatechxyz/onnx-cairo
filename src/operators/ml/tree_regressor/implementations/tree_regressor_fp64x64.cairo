use orion::operators::ml::tree_regressor::core::{TreeNode, TreeRegressorTrait};
use orion::operators::ml::tree_regressor::core;
use orion::numbers::{FP64x64, FP64x64Impl};

impl FP64x64TreeRegressor of TreeRegressorTrait<FP64x64> {
    fn fit(
        data: Span<Span<FP64x64>>, target: Span<FP64x64>, max_depth: usize, random_state: usize
    ) -> TreeNode<FP64x64> {
        core::fit(data, target, 0, max_depth, random_state)
    }

    fn predict(ref self: TreeNode<FP64x64>, features: Span<FP64x64>) -> FP64x64 {
        core::predict(ref self, features)
    }
}
