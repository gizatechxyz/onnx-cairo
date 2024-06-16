use onnx::onnx_proto::NodeProto;

pub(crate) fn decompose_reduce_log_sum(node: NodeProto) -> Vec<NodeProto> {
    let mut output_name = node.output.first().unwrap().clone();
    output_name.push_str("_reduce_sum_output");

    let mut reduce_sum_name = node.name.clone();
    let mut log_name = node.name.clone();

    if node.name.as_str() != "" {
        reduce_sum_name.push_str("_decomposed_reduce_sum");
        log_name.push_str("_decomposed_log");
    };

    let reduce_sum = NodeProto {
        input: node.input.clone(),
        output: vec![output_name],
        name: reduce_sum_name,
        op_type: "ReduceSum".to_string(),
        domain: node.domain.clone(),
        overload: node.overload.clone(),
        attribute: node.attribute.clone(),
        doc_string: node.doc_string.clone(),
        metadata_props: node.metadata_props.clone(),
    };

    let log = NodeProto {
        input: reduce_sum.output.clone(),
        output: node.output,
        name: log_name,
        op_type: "Log".to_string(),
        domain: node.domain,
        overload: node.overload,
        attribute: vec![],
        doc_string: node.doc_string,
        metadata_props: node.metadata_props,
    };

    vec![reduce_sum, log]
}
