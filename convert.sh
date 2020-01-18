#!/bin/sh
tensorflowjs_converter \
    --input_format=tf_saved_model \
    --output_format=tfjs_graph_model \
    --signature_name=serving_default \
    --saved_model_tags=serve \
    /Users/fanxl/Github/tensorflow/char-rnn-writer/result/poem/model_simple \
    /Users/fanxl/Github/tensorflow/char-rnn-writer/result/poem/model_simple/web
