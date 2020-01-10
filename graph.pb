node {
  name: "Placeholder"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
        dim {
          size: -1
        }
      }
    }
  }
}
node {
  name: "Placeholder_1"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
        dim {
          size: -1
        }
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/concat"
  op: "ConcatV2"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros"
  op: "Fill"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/concat"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_4"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_5"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1"
  op: "ConcatV2"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_4"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_5"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1"
  op: "Fill"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_6"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_7"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat"
  op: "ConcatV2"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros"
  op: "Fill"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_4"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_5"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1"
  op: "ConcatV2"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_4"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_5"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1"
  op: "Fill"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_6"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_7"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "random_uniform/shape"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\035\003\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform/min"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform/max"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform/shape"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform/sub"
  op: "Sub"
  input: "random_uniform/max"
  input: "random_uniform/min"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform/mul"
  op: "Mul"
  input: "random_uniform/RandomUniform"
  input: "random_uniform/sub"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform"
  op: "Add"
  input: "random_uniform/mul"
  input: "random_uniform/min"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "embedding"
  op: "VarHandleOp"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 797
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "embedding"
    }
  }
}
node {
  name: "embedding/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "embedding"
  device: "/device:CPU:0"
}
node {
  name: "embedding/Assign"
  op: "AssignVariableOp"
  input: "embedding"
  input: "random_uniform"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "embedding/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "embedding"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "embedding_lookup"
  op: "ResourceGather"
  input: "embedding"
  input: "Placeholder"
  device: "/device:CPU:0"
  attr {
    key: "Tindices"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "batch_dims"
    value {
      i: 0
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "validate_indices"
    value {
      b: true
    }
  }
}
node {
  name: "embedding_lookup/Identity"
  op: "Identity"
  input: "embedding_lookup"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "embedding_lookup/Identity_1"
  op: "Identity"
  input: "embedding_lookup/Identity"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/Rank"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "rnn/range/start"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "rnn/range/delta"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "rnn/range"
  op: "Range"
  input: "rnn/range/start"
  input: "rnn/Rank"
  input: "rnn/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/concat/values_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "rnn/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "rnn/concat"
  op: "ConcatV2"
  input: "rnn/concat/values_0"
  input: "rnn/range"
  input: "rnn/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/transpose"
  op: "Transpose"
  input: "embedding_lookup/Identity_1"
  input: "rnn/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/Shape"
  op: "Shape"
  input: "rnn/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "rnn/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "rnn/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "rnn/strided_slice"
  op: "StridedSlice"
  input: "rnn/Shape"
  input: "rnn/strided_slice/stack"
  input: "rnn/strided_slice/stack_1"
  input: "rnn/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "rnn/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "rnn/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "rnn/concat_1/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "rnn/concat_1"
  op: "ConcatV2"
  input: "rnn/Const"
  input: "rnn/Const_1"
  input: "rnn/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "rnn/zeros"
  op: "Fill"
  input: "rnn/concat_1"
  input: "rnn/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/time"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "rnn/TensorArrayV2/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "rnn/TensorArrayV2"
  op: "TensorListReserve"
  input: "rnn/TensorArrayV2/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/TensorArrayV2_1/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "rnn/TensorArrayV2_1"
  op: "TensorListReserve"
  input: "rnn/TensorArrayV2_1/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/TensorArrayUnstack/TensorListFromTensor/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "rnn/TensorArrayUnstack/TensorListFromTensor"
  op: "TensorListFromTensor"
  input: "rnn/transpose"
  input: "rnn/TensorArrayUnstack/TensorListFromTensor/element_shape"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/Maximum/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "rnn/Maximum"
  op: "Maximum"
  input: "rnn/Maximum/x"
  input: "rnn/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/Minimum"
  op: "Minimum"
  input: "rnn/strided_slice"
  input: "rnn/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/while/loop_counter"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\001\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.0883883461356163
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0883883461356163
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/max"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniform"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform"
  op: "Add"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mul"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 256
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Read/Identity"
  op: "Identity"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Read/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Read/Identity"
  op: "Identity"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Read/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/while"
  op: "While"
  input: "rnn/while/loop_counter"
  input: "rnn/strided_slice"
  input: "rnn/time"
  input: "rnn/TensorArrayV2"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros"
  input: "MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1"
  input: "rnn/Minimum"
  input: "rnn/TensorArrayUnstack/TensorListFromTensor"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Read/Identity"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Read/Identity"
  input: "gradients/rnn/while_grad/placeholder_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_0/accumulator"
  input: "gradients/rnn/while_grad/placeholder_4_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_0/accumulator"
  input: "gradients/rnn/while_grad/placeholder_2_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_0/accumulator"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_0/accumulator"
  attr {
    key: "T"
    value {
      list {
        type: DT_INT32
        type: DT_INT32
        type: DT_INT32
        type: DT_VARIANT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_INT32
        type: DT_VARIANT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
      }
    }
  }
  attr {
    key: "_lower_using_switch_merge"
    value {
      b: true
    }
  }
  attr {
    key: "_num_original_outputs"
    value {
      i: 27
    }
  }
  attr {
    key: "body"
    value {
      func {
        name: "rnn_while_body_78_rewritten"
      }
    }
  }
  attr {
    key: "cond"
    value {
      func {
        name: "rnn_while_cond_77_rewritten"
      }
    }
  }
  attr {
    key: "output_shapes"
    value {
      list {
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
          dim {
            size: 64
          }
          dim {
            size: 128
          }
        }
        shape {
          dim {
            size: 64
          }
          dim {
            size: 128
          }
        }
        shape {
          dim {
            size: 64
          }
          dim {
            size: 128
          }
        }
        shape {
          dim {
            size: 64
          }
          dim {
            size: 128
          }
        }
        shape {
        }
        shape {
        }
        shape {
          dim {
            size: 256
          }
          dim {
            size: 512
          }
        }
        shape {
          dim {
            size: 512
          }
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
      }
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "rnn/while/Identity"
  op: "Identity"
  input: "rnn/while"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/while/Identity_1"
  op: "Identity"
  input: "rnn/while:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/while/Identity_2"
  op: "Identity"
  input: "rnn/while:2"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/while/Identity_3"
  op: "Identity"
  input: "rnn/while:3"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "rnn/while/Identity_4"
  op: "Identity"
  input: "rnn/while:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/while/Identity_5"
  op: "Identity"
  input: "rnn/while:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/while/Identity_6"
  op: "Identity"
  input: "rnn/while:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/while/Identity_7"
  op: "Identity"
  input: "rnn/while:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/while/Identity_8"
  op: "Identity"
  input: "rnn/while:8"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/while/Identity_9"
  op: "Identity"
  input: "rnn/while:9"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "rnn/while/Identity_10"
  op: "Identity"
  input: "rnn/while:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/while/Identity_11"
  op: "Identity"
  input: "rnn/while:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/TensorArrayV2Stack/TensorListStack/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "rnn/TensorArrayV2Stack/TensorListStack"
  op: "TensorListStack"
  input: "rnn/while/Identity_3"
  input: "rnn/TensorArrayV2Stack/TensorListStack/element_shape"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_elements"
    value {
      i: -1
    }
  }
}
node {
  name: "rnn/Const_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 128
      }
    }
  }
}
node {
  name: "rnn/Rank_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "rnn/range_1/start"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "rnn/range_1/delta"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "rnn/range_1"
  op: "Range"
  input: "rnn/range_1/start"
  input: "rnn/Rank_1"
  input: "rnn/range_1/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/concat_2/values_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "rnn/concat_2/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "rnn/concat_2"
  op: "ConcatV2"
  input: "rnn/concat_2/values_0"
  input: "rnn/range_1"
  input: "rnn/concat_2/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/transpose_1"
  op: "Transpose"
  input: "rnn/TensorArrayV2Stack/TensorListStack"
  input: "rnn/concat_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\200\000\000\000"
      }
    }
  }
}
node {
  name: "Reshape"
  op: "Reshape"
  input: "rnn/transpose_1"
  input: "Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "truncated_normal/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\200\000\000\000\035\003\000\000"
      }
    }
  }
}
node {
  name: "truncated_normal/mean"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "truncated_normal/stddev"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "truncated_normal/mul"
  op: "Mul"
  input: "truncated_normal/TruncatedNormal"
  input: "truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "truncated_normal"
  op: "Add"
  input: "truncated_normal/mul"
  input: "truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
        dim {
          size: 797
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Variable"
    }
  }
}
node {
  name: "Variable/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Variable"
}
node {
  name: "Variable/Assign"
  op: "AssignVariableOp"
  input: "Variable"
  input: "truncated_normal"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Variable"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "zeros"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 797
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_1"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 797
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Variable_1"
    }
  }
}
node {
  name: "Variable_1/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Variable_1"
}
node {
  name: "Variable_1/Assign"
  op: "AssignVariableOp"
  input: "Variable_1"
  input: "zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_1/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Variable_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Variable"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul"
  op: "MatMul"
  input: "Reshape"
  input: "MatMul/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "BiasAdd/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Variable_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "BiasAdd"
  op: "BiasAdd"
  input: "MatMul"
  input: "BiasAdd/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "Reshape_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "Reshape_1"
  op: "Reshape"
  input: "Placeholder_1"
  input: "Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "one_hot/on_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "one_hot/off_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "one_hot/depth"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 797
      }
    }
  }
}
node {
  name: "one_hot"
  op: "OneHot"
  input: "Reshape_1"
  input: "one_hot/depth"
  input: "one_hot/on_value"
  input: "one_hot/off_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "TI"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: -1
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Rank"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Shape"
  op: "Shape"
  input: "BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Rank_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Shape_1"
  op: "Shape"
  input: "BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Sub/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Sub"
  op: "Sub"
  input: "softmax_cross_entropy_with_logits/Rank_1"
  input: "softmax_cross_entropy_with_logits/Sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice/begin"
  op: "Pack"
  input: "softmax_cross_entropy_with_logits/Sub"
  attr {
    key: "N"
    value {
      i: 1
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice"
  op: "Slice"
  input: "softmax_cross_entropy_with_logits/Shape_1"
  input: "softmax_cross_entropy_with_logits/Slice/begin"
  input: "softmax_cross_entropy_with_logits/Slice/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/concat/values_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/concat"
  op: "ConcatV2"
  input: "softmax_cross_entropy_with_logits/concat/values_0"
  input: "softmax_cross_entropy_with_logits/Slice"
  input: "softmax_cross_entropy_with_logits/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Reshape"
  op: "Reshape"
  input: "BiasAdd"
  input: "softmax_cross_entropy_with_logits/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Rank_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Shape_2"
  op: "Shape"
  input: "one_hot"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Sub_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Sub_1"
  op: "Sub"
  input: "softmax_cross_entropy_with_logits/Rank_2"
  input: "softmax_cross_entropy_with_logits/Sub_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice_1/begin"
  op: "Pack"
  input: "softmax_cross_entropy_with_logits/Sub_1"
  attr {
    key: "N"
    value {
      i: 1
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice_1/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice_1"
  op: "Slice"
  input: "softmax_cross_entropy_with_logits/Shape_2"
  input: "softmax_cross_entropy_with_logits/Slice_1/begin"
  input: "softmax_cross_entropy_with_logits/Slice_1/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/concat_1/values_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/concat_1/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/concat_1"
  op: "ConcatV2"
  input: "softmax_cross_entropy_with_logits/concat_1/values_0"
  input: "softmax_cross_entropy_with_logits/Slice_1"
  input: "softmax_cross_entropy_with_logits/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Reshape_1"
  op: "Reshape"
  input: "one_hot"
  input: "softmax_cross_entropy_with_logits/concat_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits"
  op: "SoftmaxCrossEntropyWithLogits"
  input: "softmax_cross_entropy_with_logits/Reshape"
  input: "softmax_cross_entropy_with_logits/Reshape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Sub_2/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Sub_2"
  op: "Sub"
  input: "softmax_cross_entropy_with_logits/Rank"
  input: "softmax_cross_entropy_with_logits/Sub_2/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice_2/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice_2/size"
  op: "Pack"
  input: "softmax_cross_entropy_with_logits/Sub_2"
  attr {
    key: "N"
    value {
      i: 1
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Slice_2"
  op: "Slice"
  input: "softmax_cross_entropy_with_logits/Shape"
  input: "softmax_cross_entropy_with_logits/Slice_2/begin"
  input: "softmax_cross_entropy_with_logits/Slice_2/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "softmax_cross_entropy_with_logits/Reshape_2"
  op: "Reshape"
  input: "softmax_cross_entropy_with_logits"
  input: "softmax_cross_entropy_with_logits/Slice_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean"
  op: "Mean"
  input: "softmax_cross_entropy_with_logits/Reshape_2"
  input: "Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients/Fill"
  op: "Fill"
  input: "gradients/Shape"
  input: "gradients/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Reshape"
  op: "Reshape"
  input: "gradients/Fill"
  input: "gradients/Mean_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Shape"
  op: "Shape"
  input: "softmax_cross_entropy_with_logits/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Tile"
  op: "Tile"
  input: "gradients/Mean_grad/Reshape"
  input: "gradients/Mean_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Shape_1"
  op: "Shape"
  input: "softmax_cross_entropy_with_logits/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Prod"
  op: "Prod"
  input: "gradients/Mean_grad/Shape_1"
  input: "gradients/Mean_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Mean_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Prod_1"
  op: "Prod"
  input: "gradients/Mean_grad/Shape_2"
  input: "gradients/Mean_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Mean_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Mean_grad/Maximum"
  op: "Maximum"
  input: "gradients/Mean_grad/Prod_1"
  input: "gradients/Mean_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/floordiv"
  op: "FloorDiv"
  input: "gradients/Mean_grad/Prod"
  input: "gradients/Mean_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Mean_grad/Cast"
  op: "Cast"
  input: "gradients/Mean_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Truncate"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Mean_grad/truediv"
  op: "RealDiv"
  input: "gradients/Mean_grad/Tile"
  input: "gradients/Mean_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape"
  op: "Shape"
  input: "softmax_cross_entropy_with_logits"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape"
  op: "Reshape"
  input: "gradients/Mean_grad/truediv"
  input: "gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/zeros_like"
  op: "ZerosLike"
  input: "softmax_cross_entropy_with_logits:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/ExpandDims"
  op: "ExpandDims"
  input: "gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape"
  input: "gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/mul"
  op: "Mul"
  input: "gradients/softmax_cross_entropy_with_logits_grad/ExpandDims"
  input: "softmax_cross_entropy_with_logits:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax"
  op: "LogSoftmax"
  input: "softmax_cross_entropy_with_logits/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/Neg"
  op: "Neg"
  input: "gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1"
  op: "ExpandDims"
  input: "gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape"
  input: "gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/mul_1"
  op: "Mul"
  input: "gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1"
  input: "gradients/softmax_cross_entropy_with_logits_grad/Neg"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/softmax_cross_entropy_with_logits_grad/mul"
  input: "^gradients/softmax_cross_entropy_with_logits_grad/mul_1"
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/softmax_cross_entropy_with_logits_grad/mul"
  input: "^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/softmax_cross_entropy_with_logits_grad/mul"
      }
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/softmax_cross_entropy_with_logits_grad/mul_1"
  input: "^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1"
      }
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape"
  op: "Shape"
  input: "BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape"
  op: "Reshape"
  input: "gradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency"
  input: "gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "gradients/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/BiasAdd_grad/BiasAddGrad"
  input: "^gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape"
}
node {
  name: "gradients/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape"
  input: "^gradients/BiasAdd_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/BiasAdd_grad/BiasAddGrad"
  input: "^gradients/BiasAdd_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "gradients/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/BiasAdd_grad/tuple/control_dependency"
  input: "MatMul/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "Reshape"
  input: "gradients/BiasAdd_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/MatMul_grad/MatMul"
  input: "^gradients/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/MatMul_grad/MatMul"
  input: "^gradients/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/MatMul_grad/MatMul_1"
  input: "^gradients/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/Reshape_grad/Shape"
  op: "Shape"
  input: "rnn/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Reshape_grad/Reshape"
  op: "Reshape"
  input: "gradients/MatMul_grad/tuple/control_dependency"
  input: "gradients/Reshape_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/transpose_1_grad/InvertPermutation"
  op: "InvertPermutation"
  input: "rnn/concat_2"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/transpose_1_grad/transpose"
  op: "Transpose"
  input: "gradients/Reshape_grad/Reshape"
  input: "gradients/rnn/transpose_1_grad/InvertPermutation"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor"
  op: "TensorListFromTensor"
  input: "gradients/rnn/transpose_1_grad/transpose"
  input: "gradients/rnn/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor/element_shape"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/zeros_like_1"
  op: "ZerosLike"
  input: "rnn/while:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/zeros_like_2"
  op: "ZerosLike"
  input: "rnn/while:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/zeros_like_3"
  op: "ZerosLike"
  input: "rnn/while:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/zeros_like_4"
  op: "ZerosLike"
  input: "rnn/while:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/zeros_like_5"
  op: "ZerosLike"
  input: "rnn/while:9"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/zeros_like_6"
  op: "ZerosLike"
  input: "rnn/while:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/zeros_like_7"
  op: "ZerosLike"
  input: "rnn/while:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/grad_counter"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/placeholder_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/Const"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/placeholder_4_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/placeholder_4_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/placeholder_4_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/placeholder_2_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/placeholder_2_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/placeholder_2_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_0/accumulator/element_shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_0/accumulator"
  op: "EmptyTensorList"
  input: "gradients/rnn/while_grad/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_0/accumulator/element_shape"
  input: "rnn/strided_slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/rnn/while_grad"
  op: "While"
  input: "gradients/rnn/while_grad/grad_counter"
  input: "rnn/strided_slice"
  input: "rnn/while"
  input: "gradients/rnn/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor"
  input: "gradients/zeros_like_1"
  input: "gradients/zeros_like_2"
  input: "gradients/zeros_like_3"
  input: "gradients/zeros_like_4"
  input: "gradients/zeros_like_5"
  input: "gradients/zeros_like_6"
  input: "gradients/zeros_like_7"
  input: "rnn/while:12"
  input: "rnn/while:13"
  input: "rnn/while:14"
  input: "rnn/while:15"
  input: "rnn/while:16"
  input: "rnn/while:17"
  input: "rnn/while:18"
  input: "rnn/while:10"
  input: "rnn/while:19"
  input: "rnn/while:20"
  input: "rnn/while:21"
  input: "rnn/while:22"
  input: "rnn/while:23"
  input: "rnn/while:24"
  input: "rnn/while:25"
  input: "rnn/while:26"
  input: "rnn/while:9"
  attr {
    key: "T"
    value {
      list {
        type: DT_INT32
        type: DT_INT32
        type: DT_INT32
        type: DT_VARIANT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_VARIANT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_FLOAT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
        type: DT_VARIANT
      }
    }
  }
  attr {
    key: "_lower_using_switch_merge"
    value {
      b: true
    }
  }
  attr {
    key: "body"
    value {
      func {
        name: "rnn_while_body_78_grad_399"
      }
    }
  }
  attr {
    key: "cond"
    value {
      func {
        name: "rnn_while_cond_77_rewritten_grad_665"
      }
    }
  }
  attr {
    key: "output_shapes"
    value {
      list {
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
          dim {
            size: 64
          }
          dim {
            size: 128
          }
        }
        shape {
          dim {
            size: 64
          }
          dim {
            size: 128
          }
        }
        shape {
          dim {
            size: 64
          }
          dim {
            size: 128
          }
        }
        shape {
          dim {
            size: 64
          }
          dim {
            size: 128
          }
        }
        shape {
        }
        shape {
          dim {
            size: 256
          }
          dim {
            size: 512
          }
        }
        shape {
          dim {
            size: 512
          }
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
          dim {
            size: 256
          }
          dim {
            size: 512
          }
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
        shape {
        }
      }
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_1"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_2"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:2"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_3"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:3"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_4"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_5"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_6"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_7"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_8"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:8"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_9"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_10"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_11"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:11"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_12"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:12"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_13"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:13"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_14"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:14"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_15"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:15"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_16"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:16"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_17"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:17"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_18"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_19"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:19"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_20"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:20"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_21"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:21"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_22"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:22"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_23"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:23"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_24"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:24"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_25"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:25"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_26"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:26"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/Identity_27"
  op: "Identity"
  input: "gradients/rnn/while_grad/rnn/while_grad:27"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
}
node {
  name: "gradients/rnn/while_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/rnn/while_grad/Identity_10"
  input: "^gradients/rnn/while_grad/Identity_3"
  input: "^gradients/rnn/while_grad/Identity_4"
  input: "^gradients/rnn/while_grad/Identity_5"
  input: "^gradients/rnn/while_grad/Identity_6"
  input: "^gradients/rnn/while_grad/Identity_7"
  input: "^gradients/rnn/while_grad/Identity_8"
  input: "^gradients/rnn/while_grad/Identity_9"
}
node {
  name: "gradients/rnn/while_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/rnn/while_grad/Identity_3"
  input: "^gradients/rnn/while_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/rnn/while_grad/Identity_3"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/rnn/while_grad/Identity_4"
  input: "^gradients/rnn/while_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/rnn/while_grad/Identity_4"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "gradients/rnn/while_grad/Identity_5"
  input: "^gradients/rnn/while_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/rnn/while_grad/Identity_5"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/tuple/control_dependency_3"
  op: "Identity"
  input: "gradients/rnn/while_grad/Identity_6"
  input: "^gradients/rnn/while_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/rnn/while_grad/Identity_6"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/tuple/control_dependency_4"
  op: "Identity"
  input: "gradients/rnn/while_grad/Identity_7"
  input: "^gradients/rnn/while_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/rnn/while_grad/Identity_7"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/tuple/control_dependency_5"
  op: "Identity"
  input: "gradients/rnn/while_grad/Identity_8"
  input: "^gradients/rnn/while_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_VARIANT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/rnn/while_grad/Identity_8"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/tuple/control_dependency_6"
  op: "Identity"
  input: "gradients/rnn/while_grad/Identity_9"
  input: "^gradients/rnn/while_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/rnn/while_grad/Identity_9"
      }
    }
  }
}
node {
  name: "gradients/rnn/while_grad/tuple/control_dependency_7"
  op: "Identity"
  input: "gradients/rnn/while_grad/Identity_10"
  input: "^gradients/rnn/while_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/rnn/while_grad/Identity_10"
      }
    }
  }
}
node {
  name: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/Shape"
  op: "Shape"
  input: "rnn/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/Slice/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/Slice/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/Slice"
  op: "Slice"
  input: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/Shape"
  input: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/Slice/begin"
  input: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/Slice/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/TensorListStack"
  op: "TensorListStack"
  input: "gradients/rnn/while_grad/tuple/control_dependency_5"
  input: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/Slice"
  attr {
    key: "element_dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_elements"
    value {
      i: -1
    }
  }
}
node {
  name: "gradients/rnn/transpose_grad/InvertPermutation"
  op: "InvertPermutation"
  input: "rnn/concat"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/rnn/transpose_grad/transpose"
  op: "Transpose"
  input: "gradients/rnn/TensorArrayUnstack/TensorListFromTensor_grad/TensorListStack"
  input: "gradients/rnn/transpose_grad/InvertPermutation"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\035\003\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/Size"
  op: "Size"
  input: "Placeholder"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/ExpandDims/dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/ExpandDims"
  op: "ExpandDims"
  input: "gradients/embedding_lookup_grad/Size"
  input: "gradients/embedding_lookup_grad/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/strided_slice"
  op: "StridedSlice"
  input: "gradients/embedding_lookup_grad/Const"
  input: "gradients/embedding_lookup_grad/strided_slice/stack"
  input: "gradients/embedding_lookup_grad/strided_slice/stack_1"
  input: "gradients/embedding_lookup_grad/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/concat"
  op: "ConcatV2"
  input: "gradients/embedding_lookup_grad/ExpandDims"
  input: "gradients/embedding_lookup_grad/strided_slice"
  input: "gradients/embedding_lookup_grad/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/Reshape"
  op: "Reshape"
  input: "gradients/rnn/transpose_grad/transpose"
  input: "gradients/embedding_lookup_grad/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/embedding_lookup_grad/Reshape_1"
  op: "Reshape"
  input: "Placeholder"
  input: "gradients/embedding_lookup_grad/ExpandDims"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "beta1_power/Initializer/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "beta1_power"
    }
  }
}
node {
  name: "beta1_power/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "beta1_power"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "beta1_power/Assign"
  op: "AssignVariableOp"
  input: "beta1_power"
  input: "beta1_power/Initializer/initial_value"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "beta1_power/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "beta1_power"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "beta2_power/Initializer/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "beta2_power"
    }
  }
}
node {
  name: "beta2_power/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "beta2_power"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "beta2_power/Assign"
  op: "AssignVariableOp"
  input: "beta2_power"
  input: "beta2_power/Initializer/initial_value"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "beta2_power/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "beta2_power"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "embedding/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\035\003\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "embedding/Adam/Initializer/zeros/Const"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "embedding/Adam/Initializer/zeros"
  op: "Fill"
  input: "embedding/Adam/Initializer/zeros/shape_as_tensor"
  input: "embedding/Adam/Initializer/zeros/Const"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "embedding/Adam"
  op: "VarHandleOp"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 797
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "embedding/Adam"
    }
  }
}
node {
  name: "embedding/Adam/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "embedding/Adam"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "embedding/Adam/Assign"
  op: "AssignVariableOp"
  input: "embedding/Adam"
  input: "embedding/Adam/Initializer/zeros"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "embedding/Adam/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "embedding/Adam"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "embedding/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\035\003\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "embedding/Adam_1/Initializer/zeros/Const"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "embedding/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "embedding/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "embedding/Adam_1/Initializer/zeros/Const"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "embedding/Adam_1"
  op: "VarHandleOp"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 797
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "embedding/Adam_1"
    }
  }
}
node {
  name: "embedding/Adam_1/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "embedding/Adam_1"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "embedding/Adam_1/Assign"
  op: "AssignVariableOp"
  input: "embedding/Adam_1"
  input: "embedding/Adam_1/Initializer/zeros"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "embedding/Adam_1/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "embedding/Adam_1"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\001\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 256
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Assign"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\001\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 256
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Assign"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Assign"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Assign"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\200\000\000\000\035\003\000\000"
      }
    }
  }
}
node {
  name: "Variable/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable/Adam/Initializer/zeros"
  op: "Fill"
  input: "Variable/Adam/Initializer/zeros/shape_as_tensor"
  input: "Variable/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable/Adam"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
        dim {
          size: 797
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Variable/Adam"
    }
  }
}
node {
  name: "Variable/Adam/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Variable/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Variable/Adam/Assign"
  op: "AssignVariableOp"
  input: "Variable/Adam"
  input: "Variable/Adam/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable/Adam/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Variable/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\200\000\000\000\035\003\000\000"
      }
    }
  }
}
node {
  name: "Variable/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Variable/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Variable/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Variable/Adam_1"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
        dim {
          size: 797
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Variable/Adam_1"
    }
  }
}
node {
  name: "Variable/Adam_1/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Variable/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Variable/Adam_1/Assign"
  op: "AssignVariableOp"
  input: "Variable/Adam_1"
  input: "Variable/Adam_1/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable/Adam_1/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Variable/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_1/Adam/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 797
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_1/Adam"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 797
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Variable_1/Adam"
    }
  }
}
node {
  name: "Variable_1/Adam/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Variable_1/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
}
node {
  name: "Variable_1/Adam/Assign"
  op: "AssignVariableOp"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_1/Adam/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Variable_1/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_1/Adam_1/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 797
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_1/Adam_1"
  op: "VarHandleOp"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 797
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Variable_1/Adam_1"
    }
  }
}
node {
  name: "Variable_1/Adam_1/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Variable_1/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
}
node {
  name: "Variable_1/Adam_1/Assign"
  op: "AssignVariableOp"
  input: "Variable_1/Adam_1"
  input: "Variable_1/Adam_1/Initializer/zeros"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_1/Adam_1/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Variable_1/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Adam/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam/update_embedding/Unique"
  op: "Unique"
  input: "gradients/embedding_lookup_grad/Reshape_1"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "out_idx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Adam/update_embedding/Shape"
  op: "Shape"
  input: "Adam/update_embedding/Unique"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Adam/update_embedding/strided_slice/stack"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Adam/update_embedding/strided_slice/stack_1"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Adam/update_embedding/strided_slice/stack_2"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Adam/update_embedding/strided_slice"
  op: "StridedSlice"
  input: "Adam/update_embedding/Shape"
  input: "Adam/update_embedding/strided_slice/stack"
  input: "Adam/update_embedding/strided_slice/stack_1"
  input: "Adam/update_embedding/strided_slice/stack_2"
  device: "/device:CPU:0"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "Adam/update_embedding/UnsortedSegmentSum"
  op: "UnsortedSegmentSum"
  input: "gradients/embedding_lookup_grad/Reshape"
  input: "Adam/update_embedding/Unique:1"
  input: "Adam/update_embedding/strided_slice"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tindices"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tnumsegments"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp"
  op: "ReadVariableOp"
  input: "beta2_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/sub/x"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Adam/update_embedding/sub"
  op: "Sub"
  input: "Adam/update_embedding/sub/x"
  input: "Adam/update_embedding/ReadVariableOp"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/Sqrt"
  op: "Sqrt"
  input: "Adam/update_embedding/sub"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/mul"
  op: "Mul"
  input: "Adam/learning_rate"
  input: "Adam/update_embedding/Sqrt"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp_1"
  op: "ReadVariableOp"
  input: "beta1_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/sub_1/x"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Adam/update_embedding/sub_1"
  op: "Sub"
  input: "Adam/update_embedding/sub_1/x"
  input: "Adam/update_embedding/ReadVariableOp_1"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/truediv"
  op: "RealDiv"
  input: "Adam/update_embedding/mul"
  input: "Adam/update_embedding/sub_1"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/sub_2/x"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Adam/update_embedding/sub_2"
  op: "Sub"
  input: "Adam/update_embedding/sub_2/x"
  input: "Adam/beta1"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/mul_1"
  op: "Mul"
  input: "Adam/update_embedding/UnsortedSegmentSum"
  input: "Adam/update_embedding/sub_2"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp_2"
  op: "ReadVariableOp"
  input: "embedding/Adam"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/mul_2"
  op: "Mul"
  input: "Adam/update_embedding/ReadVariableOp_2"
  input: "Adam/beta1"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/AssignVariableOp"
  op: "AssignVariableOp"
  input: "embedding/Adam"
  input: "Adam/update_embedding/mul_2"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp_3"
  op: "ReadVariableOp"
  input: "embedding/Adam"
  input: "^Adam/update_embedding/AssignVariableOp"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/ResourceScatterAdd"
  op: "ResourceScatterAdd"
  input: "embedding/Adam"
  input: "Adam/update_embedding/Unique"
  input: "Adam/update_embedding/mul_1"
  input: "^Adam/update_embedding/AssignVariableOp"
  device: "/device:CPU:0"
  attr {
    key: "Tindices"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp_4"
  op: "ReadVariableOp"
  input: "embedding/Adam"
  input: "^Adam/update_embedding/AssignVariableOp"
  input: "^Adam/update_embedding/ResourceScatterAdd"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/mul_3"
  op: "Mul"
  input: "Adam/update_embedding/UnsortedSegmentSum"
  input: "Adam/update_embedding/UnsortedSegmentSum"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/sub_3/x"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Adam/update_embedding/sub_3"
  op: "Sub"
  input: "Adam/update_embedding/sub_3/x"
  input: "Adam/beta2"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/mul_4"
  op: "Mul"
  input: "Adam/update_embedding/mul_3"
  input: "Adam/update_embedding/sub_3"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp_5"
  op: "ReadVariableOp"
  input: "embedding/Adam_1"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/mul_5"
  op: "Mul"
  input: "Adam/update_embedding/ReadVariableOp_5"
  input: "Adam/beta2"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/AssignVariableOp_1"
  op: "AssignVariableOp"
  input: "embedding/Adam_1"
  input: "Adam/update_embedding/mul_5"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp_6"
  op: "ReadVariableOp"
  input: "embedding/Adam_1"
  input: "^Adam/update_embedding/AssignVariableOp_1"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/ResourceScatterAdd_1"
  op: "ResourceScatterAdd"
  input: "embedding/Adam_1"
  input: "Adam/update_embedding/Unique"
  input: "Adam/update_embedding/mul_4"
  input: "^Adam/update_embedding/AssignVariableOp_1"
  device: "/device:CPU:0"
  attr {
    key: "Tindices"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp_7"
  op: "ReadVariableOp"
  input: "embedding/Adam_1"
  input: "^Adam/update_embedding/AssignVariableOp_1"
  input: "^Adam/update_embedding/ResourceScatterAdd_1"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/Sqrt_1"
  op: "Sqrt"
  input: "Adam/update_embedding/ReadVariableOp_7"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/mul_6"
  op: "Mul"
  input: "Adam/update_embedding/truediv"
  input: "Adam/update_embedding/ReadVariableOp_4"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/add"
  op: "AddV2"
  input: "Adam/update_embedding/Sqrt_1"
  input: "Adam/epsilon"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/truediv_1"
  op: "RealDiv"
  input: "Adam/update_embedding/mul_6"
  input: "Adam/update_embedding/add"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_embedding/AssignSubVariableOp"
  op: "AssignSubVariableOp"
  input: "embedding"
  input: "Adam/update_embedding/truediv_1"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/ReadVariableOp_8"
  op: "ReadVariableOp"
  input: "embedding"
  input: "^Adam/update_embedding/AssignSubVariableOp"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_embedding/group_deps"
  op: "NoOp"
  input: "^Adam/update_embedding/AssignSubVariableOp"
  input: "^Adam/update_embedding/ReadVariableOp_4"
  input: "^Adam/update_embedding/ReadVariableOp_7"
  device: "/device:CPU:0"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@embedding"
      }
    }
  }
}
node {
  name: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp"
  op: "ReadVariableOp"
  input: "beta1_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1"
  op: "ReadVariableOp"
  input: "beta2_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam"
  op: "ResourceApplyAdam"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
  input: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp"
  input: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1"
  input: "Adam/learning_rate"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/rnn/while_grad/tuple/control_dependency_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam/ReadVariableOp"
  op: "ReadVariableOp"
  input: "beta1_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1"
  op: "ReadVariableOp"
  input: "beta2_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam"
  op: "ResourceApplyAdam"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
  input: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam/ReadVariableOp"
  input: "Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1"
  input: "Adam/learning_rate"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/rnn/while_grad/tuple/control_dependency_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_Variable/ResourceApplyAdam/ReadVariableOp"
  op: "ReadVariableOp"
  input: "beta1_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_Variable/ResourceApplyAdam/ReadVariableOp_1"
  op: "ReadVariableOp"
  input: "beta2_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_Variable/ResourceApplyAdam"
  op: "ResourceApplyAdam"
  input: "Variable"
  input: "Variable/Adam"
  input: "Variable/Adam_1"
  input: "Adam/update_Variable/ResourceApplyAdam/ReadVariableOp"
  input: "Adam/update_Variable/ResourceApplyAdam/ReadVariableOp_1"
  input: "Adam/learning_rate"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp"
  op: "ReadVariableOp"
  input: "beta1_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp_1"
  op: "ReadVariableOp"
  input: "beta2_power"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/update_Variable_1/ResourceApplyAdam"
  op: "ResourceApplyAdam"
  input: "Variable_1"
  input: "Variable_1/Adam"
  input: "Variable_1/Adam_1"
  input: "Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp"
  input: "Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp_1"
  input: "Adam/learning_rate"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/BiasAdd_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/ReadVariableOp"
  op: "ReadVariableOp"
  input: "beta1_power"
  input: "^Adam/update_Variable/ResourceApplyAdam"
  input: "^Adam/update_Variable_1/ResourceApplyAdam"
  input: "^Adam/update_embedding/group_deps"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/mul"
  op: "Mul"
  input: "Adam/ReadVariableOp"
  input: "Adam/beta1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Adam/AssignVariableOp"
  op: "AssignVariableOp"
  input: "beta1_power"
  input: "Adam/mul"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/ReadVariableOp_1"
  op: "ReadVariableOp"
  input: "beta1_power"
  input: "^Adam/AssignVariableOp"
  input: "^Adam/update_Variable/ResourceApplyAdam"
  input: "^Adam/update_Variable_1/ResourceApplyAdam"
  input: "^Adam/update_embedding/group_deps"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/ReadVariableOp_2"
  op: "ReadVariableOp"
  input: "beta2_power"
  input: "^Adam/update_Variable/ResourceApplyAdam"
  input: "^Adam/update_Variable_1/ResourceApplyAdam"
  input: "^Adam/update_embedding/group_deps"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/mul_1"
  op: "Mul"
  input: "Adam/ReadVariableOp_2"
  input: "Adam/beta2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "Adam/AssignVariableOp_1"
  op: "AssignVariableOp"
  input: "beta2_power"
  input: "Adam/mul_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/ReadVariableOp_3"
  op: "ReadVariableOp"
  input: "beta2_power"
  input: "^Adam/AssignVariableOp_1"
  input: "^Adam/update_Variable/ResourceApplyAdam"
  input: "^Adam/update_Variable_1/ResourceApplyAdam"
  input: "^Adam/update_embedding/group_deps"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/NoOp"
  op: "NoOp"
  input: "^Adam/AssignVariableOp"
  input: "^Adam/AssignVariableOp_1"
  input: "^Adam/update_Variable/ResourceApplyAdam"
  input: "^Adam/update_Variable_1/ResourceApplyAdam"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ResourceApplyAdam"
  input: "^Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ResourceApplyAdam"
}
node {
  name: "Adam/NoOp_1"
  op: "NoOp"
  input: "^Adam/update_embedding/group_deps"
  device: "/device:CPU:0"
}
node {
  name: "Adam"
  op: "NoOp"
  input: "^Adam/NoOp"
  input: "^Adam/NoOp_1"
}
node {
  name: "save/filename/input"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save/filename"
  op: "PlaceholderWithDefault"
  input: "save/filename/input"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "save/Const"
  op: "PlaceholderWithDefault"
  input: "save/filename"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "save/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 17
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "beta1_power"
        string_val: "beta2_power"
        string_val: "embedding"
        string_val: "embedding/Adam"
        string_val: "embedding/Adam_1"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
      }
    }
  }
}
node {
  name: "save/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 17
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/SaveV2"
  op: "SaveV2"
  input: "save/Const"
  input: "save/SaveV2/tensor_names"
  input: "save/SaveV2/shape_and_slices"
  input: "Variable/Read/ReadVariableOp"
  input: "Variable/Adam/Read/ReadVariableOp"
  input: "Variable/Adam_1/Read/ReadVariableOp"
  input: "Variable_1/Read/ReadVariableOp"
  input: "Variable_1/Adam/Read/ReadVariableOp"
  input: "Variable_1/Adam_1/Read/ReadVariableOp"
  input: "beta1_power/Read/ReadVariableOp"
  input: "beta2_power/Read/ReadVariableOp"
  input: "embedding/Read/ReadVariableOp"
  input: "embedding/Adam/Read/ReadVariableOp"
  input: "embedding/Adam_1/Read/ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Read/ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Read/ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Read/ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Read/ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Read/ReadVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Read/ReadVariableOp"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/control_dependency"
  op: "Identity"
  input: "save/Const"
  input: "^save/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save/Const"
      }
    }
  }
}
node {
  name: "save/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 17
          }
        }
        string_val: "Variable"
        string_val: "Variable/Adam"
        string_val: "Variable/Adam_1"
        string_val: "Variable_1"
        string_val: "Variable_1/Adam"
        string_val: "Variable_1/Adam_1"
        string_val: "beta1_power"
        string_val: "beta2_power"
        string_val: "embedding"
        string_val: "embedding/Adam"
        string_val: "embedding/Adam_1"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
        string_val: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
      }
    }
  }
}
node {
  name: "save/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 17
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2/tensor_names"
  input: "save/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Identity"
  op: "Identity"
  input: "save/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp"
  op: "AssignVariableOp"
  input: "Variable"
  input: "save/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_1"
  op: "Identity"
  input: "save/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_1"
  op: "AssignVariableOp"
  input: "Variable/Adam"
  input: "save/Identity_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_2"
  op: "Identity"
  input: "save/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_2"
  op: "AssignVariableOp"
  input: "Variable/Adam_1"
  input: "save/Identity_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_3"
  op: "Identity"
  input: "save/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_3"
  op: "AssignVariableOp"
  input: "Variable_1"
  input: "save/Identity_3"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_4"
  op: "Identity"
  input: "save/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_4"
  op: "AssignVariableOp"
  input: "Variable_1/Adam"
  input: "save/Identity_4"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_5"
  op: "Identity"
  input: "save/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_5"
  op: "AssignVariableOp"
  input: "Variable_1/Adam_1"
  input: "save/Identity_5"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_6"
  op: "Identity"
  input: "save/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_6"
  op: "AssignVariableOp"
  input: "beta1_power"
  input: "save/Identity_6"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_7"
  op: "Identity"
  input: "save/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_7"
  op: "AssignVariableOp"
  input: "beta2_power"
  input: "save/Identity_7"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_8"
  op: "Identity"
  input: "save/RestoreV2:8"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_8"
  op: "AssignVariableOp"
  input: "embedding"
  input: "save/Identity_8"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_9"
  op: "Identity"
  input: "save/RestoreV2:9"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_9"
  op: "AssignVariableOp"
  input: "embedding/Adam"
  input: "save/Identity_9"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_10"
  op: "Identity"
  input: "save/RestoreV2:10"
  device: "/device:CPU:0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_10"
  op: "AssignVariableOp"
  input: "embedding/Adam_1"
  input: "save/Identity_10"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_11"
  op: "Identity"
  input: "save/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_11"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias"
  input: "save/Identity_11"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_12"
  op: "Identity"
  input: "save/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_12"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam"
  input: "save/Identity_12"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_13"
  op: "Identity"
  input: "save/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_13"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1"
  input: "save/Identity_13"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_14"
  op: "Identity"
  input: "save/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_14"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel"
  input: "save/Identity_14"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_15"
  op: "Identity"
  input: "save/RestoreV2:15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_15"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam"
  input: "save/Identity_15"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/Identity_16"
  op: "Identity"
  input: "save/RestoreV2:16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/AssignVariableOp_16"
  op: "AssignVariableOp"
  input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1"
  input: "save/Identity_16"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "save/restore_all/NoOp"
  op: "NoOp"
  input: "^save/AssignVariableOp"
  input: "^save/AssignVariableOp_1"
  input: "^save/AssignVariableOp_11"
  input: "^save/AssignVariableOp_12"
  input: "^save/AssignVariableOp_13"
  input: "^save/AssignVariableOp_14"
  input: "^save/AssignVariableOp_15"
  input: "^save/AssignVariableOp_16"
  input: "^save/AssignVariableOp_2"
  input: "^save/AssignVariableOp_3"
  input: "^save/AssignVariableOp_4"
  input: "^save/AssignVariableOp_5"
  input: "^save/AssignVariableOp_6"
  input: "^save/AssignVariableOp_7"
}
node {
  name: "save/restore_all/NoOp_1"
  op: "NoOp"
  input: "^save/AssignVariableOp_10"
  input: "^save/AssignVariableOp_8"
  input: "^save/AssignVariableOp_9"
  device: "/device:CPU:0"
}
node {
  name: "save/restore_all"
  op: "NoOp"
  input: "^save/restore_all/NoOp"
  input: "^save/restore_all/NoOp_1"
}
node {
  name: "init/NoOp"
  op: "NoOp"
  input: "^Variable/Adam/Assign"
  input: "^Variable/Adam_1/Assign"
  input: "^Variable/Assign"
  input: "^Variable_1/Adam/Assign"
  input: "^Variable_1/Adam_1/Assign"
  input: "^Variable_1/Assign"
  input: "^beta1_power/Assign"
  input: "^beta2_power/Assign"
  input: "^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Assign"
  input: "^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Assign"
  input: "^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign"
  input: "^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Assign"
  input: "^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Assign"
  input: "^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign"
}
node {
  name: "init/NoOp_1"
  op: "NoOp"
  input: "^embedding/Adam/Assign"
  input: "^embedding/Adam_1/Assign"
  input: "^embedding/Assign"
  device: "/device:CPU:0"
}
node {
  name: "init"
  op: "NoOp"
  input: "^init/NoOp"
  input: "^init/NoOp_1"
}
node {
  name: "init_1"
  op: "NoOp"
}
node {
  name: "group_deps"
  op: "NoOp"
  input: "^init"
  input: "^init_1"
}
library {
  function {
    signature {
      name: "rnn_while_cond_77_rewritten_grad_665"
      input_arg {
        name: "placeholder"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_1"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_2"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_3"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_4"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_5"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_6"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_7"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_8"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_9"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_10"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_11"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_12"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_13"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_14"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_15"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_16"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_17"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_18"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_19"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_20"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_21"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_22"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_23"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_24"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_25"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_26"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_27"
        type: DT_VARIANT
      }
      output_arg {
        name: "identity"
        type: DT_BOOL
      }
    }
    node_def {
      name: "Less"
      op: "Less"
      input: "placeholder"
      input: "placeholder_2"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "Identity"
      op: "Identity"
      input: "Less:z:0"
      attr {
        key: "T"
        value {
          type: DT_BOOL
        }
      }
    }
    ret {
      key: "identity"
      value: "Identity:output:0"
    }
    arg_attr {
      value {
      }
    }
    arg_attr {
      key: 1
      value {
      }
    }
    arg_attr {
      key: 2
      value {
      }
    }
    arg_attr {
      key: 3
      value {
      }
    }
    arg_attr {
      key: 4
      value {
      }
    }
    arg_attr {
      key: 5
      value {
      }
    }
    arg_attr {
      key: 6
      value {
      }
    }
    arg_attr {
      key: 7
      value {
      }
    }
    arg_attr {
      key: 8
      value {
      }
    }
    arg_attr {
      key: 9
      value {
      }
    }
    arg_attr {
      key: 10
      value {
      }
    }
    arg_attr {
      key: 11
      value {
      }
    }
    arg_attr {
      key: 12
      value {
      }
    }
    arg_attr {
      key: 13
      value {
      }
    }
    arg_attr {
      key: 14
      value {
      }
    }
    arg_attr {
      key: 15
      value {
      }
    }
    arg_attr {
      key: 16
      value {
      }
    }
    arg_attr {
      key: 17
      value {
      }
    }
    arg_attr {
      key: 18
      value {
      }
    }
    arg_attr {
      key: 19
      value {
      }
    }
    arg_attr {
      key: 20
      value {
      }
    }
    arg_attr {
      key: 21
      value {
      }
    }
    arg_attr {
      key: 22
      value {
      }
    }
    arg_attr {
      key: 23
      value {
      }
    }
    arg_attr {
      key: 24
      value {
      }
    }
    arg_attr {
      key: 25
      value {
      }
    }
    arg_attr {
      key: 26
      value {
      }
    }
    arg_attr {
      key: 27
      value {
      }
    }
  }
  function {
    signature {
      name: "rnn_while_cond_77"
      input_arg {
        name: "rnn_while_loop_counter"
        type: DT_INT32
      }
      input_arg {
        name: "rnn_strided_slice"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_1"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_2"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_3"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_4"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_5"
        type: DT_FLOAT
      }
      input_arg {
        name: "less_rnn_minimum"
        type: DT_INT32
      }
      input_arg {
        name: "rnn_tensorarrayunstack_tensorlistfromtensor"
        type: DT_VARIANT
      }
      input_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity"
        type: DT_FLOAT
      }
      input_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity"
        type: DT_FLOAT
      }
      output_arg {
        name: "logicaland"
        type: DT_BOOL
      }
    }
    node_def {
      name: "Less"
      op: "Less"
      input: "placeholder"
      input: "less_rnn_minimum"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "Less_1"
      op: "Less"
      input: "rnn_while_loop_counter"
      input: "rnn_strided_slice"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "LogicalAnd"
      op: "LogicalAnd"
      input: "Less_1:z:0"
      input: "Less:z:0"
    }
    ret {
      key: "logicaland"
      value: "LogicalAnd:z:0"
    }
    arg_attr {
      value {
      }
    }
    arg_attr {
      key: 1
      value {
      }
    }
    arg_attr {
      key: 2
      value {
      }
    }
    arg_attr {
      key: 3
      value {
      }
    }
    arg_attr {
      key: 4
      value {
      }
    }
    arg_attr {
      key: 5
      value {
      }
    }
    arg_attr {
      key: 6
      value {
      }
    }
    arg_attr {
      key: 7
      value {
      }
    }
    arg_attr {
      key: 8
      value {
      }
    }
    arg_attr {
      key: 9
      value {
      }
    }
    arg_attr {
      key: 10
      value {
      }
    }
    arg_attr {
      key: 11
      value {
      }
    }
  }
  function {
    signature {
      name: "rnn_while_cond_77_rewritten"
      input_arg {
        name: "rnn_while_loop_counter"
        type: DT_INT32
      }
      input_arg {
        name: "rnn_strided_slice"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_1"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_2"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_3"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_4"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_5"
        type: DT_FLOAT
      }
      input_arg {
        name: "less_rnn_minimum"
        type: DT_INT32
      }
      input_arg {
        name: "rnn_tensorarrayunstack_tensorlistfromtensor"
        type: DT_VARIANT
      }
      input_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity"
        type: DT_FLOAT
      }
      input_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity"
        type: DT_FLOAT
      }
      input_arg {
        name: "gradients_rnn_while_grad_placeholder_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_5_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_3_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_3_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_placeholder_4_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_2_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_4_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat_1_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_2_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_1_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_placeholder_2_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_1_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat_0_accumulator"
        type: DT_VARIANT
      }
      output_arg {
        name: "logicaland"
        type: DT_BOOL
      }
    }
    node_def {
      name: "Less"
      op: "Less"
      input: "placeholder"
      input: "less_rnn_minimum"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "Less_1"
      op: "Less"
      input: "rnn_while_loop_counter"
      input: "rnn_strided_slice"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "LogicalAnd"
      op: "LogicalAnd"
      input: "Less_1:z:0"
      input: "Less:z:0"
    }
    ret {
      key: "logicaland"
      value: "LogicalAnd:z:0"
    }
    arg_attr {
      value {
      }
    }
    arg_attr {
      key: 1
      value {
      }
    }
    arg_attr {
      key: 2
      value {
      }
    }
    arg_attr {
      key: 3
      value {
      }
    }
    arg_attr {
      key: 4
      value {
      }
    }
    arg_attr {
      key: 5
      value {
      }
    }
    arg_attr {
      key: 6
      value {
      }
    }
    arg_attr {
      key: 7
      value {
      }
    }
    arg_attr {
      key: 8
      value {
      }
    }
    arg_attr {
      key: 9
      value {
      }
    }
    arg_attr {
      key: 10
      value {
      }
    }
    arg_attr {
      key: 11
      value {
      }
    }
    arg_attr {
      key: 12
      value {
      }
    }
    arg_attr {
      key: 13
      value {
      }
    }
    arg_attr {
      key: 14
      value {
      }
    }
    arg_attr {
      key: 15
      value {
      }
    }
    arg_attr {
      key: 16
      value {
      }
    }
    arg_attr {
      key: 17
      value {
      }
    }
    arg_attr {
      key: 18
      value {
      }
    }
    arg_attr {
      key: 19
      value {
      }
    }
    arg_attr {
      key: 20
      value {
      }
    }
    arg_attr {
      key: 21
      value {
      }
    }
    arg_attr {
      key: 22
      value {
      }
    }
    arg_attr {
      key: 23
      value {
      }
    }
    arg_attr {
      key: 24
      value {
      }
    }
    arg_attr {
      key: 25
      value {
      }
    }
    arg_attr {
      key: 26
      value {
      }
    }
  }
  function {
    signature {
      name: "rnn_while_body_78_rewritten"
      input_arg {
        name: "rnn_while_loop_counter"
        type: DT_INT32
      }
      input_arg {
        name: "rnn_strided_slice_0_0"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_1"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_2"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_3"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_4"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_5"
        type: DT_FLOAT
      }
      input_arg {
        name: "rnn_minimum_0_0"
        type: DT_INT32
      }
      input_arg {
        name: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0_0"
        type: DT_VARIANT
      }
      input_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0_0"
        type: DT_FLOAT
      }
      input_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0_0"
        type: DT_FLOAT
      }
      input_arg {
        name: "tensorlistpushback_gradients_rnn_while_grad_placeholder_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_1_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_5_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_2_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_3_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_3_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_3_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_4_gradients_rnn_while_grad_placeholder_4_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_5_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_2_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_6_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_4_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_7_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat_1_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_8_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_2_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_9_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_1_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_10_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_11_gradients_rnn_while_grad_placeholder_2_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_12_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_13_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_1_0_accumulator"
        type: DT_VARIANT
      }
      input_arg {
        name: "tensorlistpushback_14_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat_0_accumulator"
        type: DT_VARIANT
      }
      output_arg {
        name: "add_1_0"
        type: DT_INT32
      }
      output_arg {
        name: "rnn_strided_slice_0"
        type: DT_INT32
      }
      output_arg {
        name: "add_0"
        type: DT_INT32
      }
      output_arg {
        name: "tensorarrayv2write_tensorlistsetitem"
        type: DT_VARIANT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_add_1"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_add_3"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_minimum_0"
        type: DT_INT32
      }
      output_arg {
        name: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0"
        type: DT_VARIANT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0"
        type: DT_FLOAT
      }
      output_arg {
        name: "tensorlistpushback"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_1"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_2"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_3"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_4"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_5"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_6"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_7"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_8"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_9"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_10"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_11"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_12"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_13"
        type: DT_VARIANT
      }
      output_arg {
        name: "tensorlistpushback_14"
        type: DT_VARIANT
      }
    }
    node_def {
      name: "TensorArrayV2Read/TensorListGetItem/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "TensorArrayV2Read/TensorListGetItem"
      op: "TensorListGetItem"
      input: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0_0"
      input: "placeholder"
      input: "TensorArrayV2Read/TensorListGetItem/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat"
      op: "ConcatV2"
      input: "TensorArrayV2Read/TensorListGetItem:item:0"
      input: "placeholder_3"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis:output:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tidx"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul"
      op: "MatMul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat:output:0"
      input: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "transpose_a"
        value {
          b: false
        }
      }
      attr {
        key: "transpose_b"
        value {
          b: false
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd"
      op: "BiasAdd"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul:product:0"
      input: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "data_format"
        value {
          s: "NHWC"
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 4
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split"
      op: "Split"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const:output:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "num_split"
        value {
          i: 4
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_FLOAT
            tensor_shape {
            }
            float_val: 1.0
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add"
      op: "Add"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:output:2"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul"
      op: "Mul"
      input: "placeholder_2"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh"
      op: "Tanh"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:output:1"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1"
      op: "Mul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1:y:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1"
      op: "Add"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul:z:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1"
      op: "Tanh"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:output:3"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2"
      op: "Mul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1:y:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axis"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1"
      op: "ConcatV2"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2:z:0"
      input: "placeholder_5"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axis:output:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tidx"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1"
      op: "MatMul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1:output:0"
      input: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "transpose_a"
        value {
          b: false
        }
      }
      attr {
        key: "transpose_b"
        value {
          b: false
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1"
      op: "BiasAdd"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1:product:0"
      input: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "data_format"
        value {
          s: "NHWC"
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_4"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 4
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1"
      op: "Split"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3:output:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "num_split"
        value {
          i: 4
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_FLOAT
            tensor_shape {
            }
            float_val: 1.0
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2"
      op: "Add"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:output:2"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3"
      op: "Mul"
      input: "placeholder_4"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2"
      op: "Tanh"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:output:1"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4"
      op: "Mul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4:y:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3"
      op: "Add"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3:z:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3"
      op: "Tanh"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:output:3"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5"
      op: "Mul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3:y:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorArrayV2Write/TensorListSetItem"
      op: "TensorListSetItem"
      input: "placeholder_1"
      input: "placeholder"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5:z:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "add/y"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "add_0_0"
      op: "AddV2"
      input: "placeholder"
      input: "add/y:output:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "add_1/y"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "add_1_0_0"
      op: "AddV2"
      input: "rnn_while_loop_counter"
      input: "add_1/y:output:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "TensorListPushBack"
      op: "TensorListPushBack"
      input: "tensorlistpushback_gradients_rnn_while_grad_placeholder_0_accumulator"
      input: "placeholder"
      attr {
        key: "element_dtype"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "TensorListPushBack_1"
      op: "TensorListPushBack"
      input: "tensorlistpushback_1_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_5_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_2"
      op: "TensorListPushBack"
      input: "tensorlistpushback_2_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_3_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_3"
      op: "TensorListPushBack"
      input: "tensorlistpushback_3_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_3_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_4"
      op: "TensorListPushBack"
      input: "tensorlistpushback_4_gradients_rnn_while_grad_placeholder_4_0_accumulator"
      input: "placeholder_4"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_5"
      op: "TensorListPushBack"
      input: "tensorlistpushback_5_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_2_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_6"
      op: "TensorListPushBack"
      input: "tensorlistpushback_6_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_4_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_7"
      op: "TensorListPushBack"
      input: "tensorlistpushback_7_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat_1_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_8"
      op: "TensorListPushBack"
      input: "tensorlistpushback_8_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_2_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_9"
      op: "TensorListPushBack"
      input: "tensorlistpushback_9_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_1_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_10"
      op: "TensorListPushBack"
      input: "tensorlistpushback_10_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_11"
      op: "TensorListPushBack"
      input: "tensorlistpushback_11_gradients_rnn_while_grad_placeholder_2_0_accumulator"
      input: "placeholder_2"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_12"
      op: "TensorListPushBack"
      input: "tensorlistpushback_12_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_13"
      op: "TensorListPushBack"
      input: "tensorlistpushback_13_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_1_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1:y:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorListPushBack_14"
      op: "TensorListPushBack"
      input: "tensorlistpushback_14_gradients_rnn_while_grad_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat_0_accumulator"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    ret {
      key: "add_0"
      value: "add_0_0:z:0"
    }
    ret {
      key: "add_1_0"
      value: "add_1_0_0:z:0"
    }
    ret {
      key: "rnn_minimum_0"
      value: "rnn_minimum_0_0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_add_1"
      value: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1:z:0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_add_3"
      value: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3:z:0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0"
      value: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0_0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0"
      value: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0_0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2"
      value: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2:z:0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5"
      value: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5:z:0"
    }
    ret {
      key: "rnn_strided_slice_0"
      value: "rnn_strided_slice_0_0"
    }
    ret {
      key: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0"
      value: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0_0"
    }
    ret {
      key: "tensorarrayv2write_tensorlistsetitem"
      value: "TensorArrayV2Write/TensorListSetItem:output_handle:0"
    }
    ret {
      key: "tensorlistpushback"
      value: "TensorListPushBack:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_1"
      value: "TensorListPushBack_1:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_10"
      value: "TensorListPushBack_10:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_11"
      value: "TensorListPushBack_11:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_12"
      value: "TensorListPushBack_12:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_13"
      value: "TensorListPushBack_13:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_14"
      value: "TensorListPushBack_14:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_2"
      value: "TensorListPushBack_2:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_3"
      value: "TensorListPushBack_3:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_4"
      value: "TensorListPushBack_4:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_5"
      value: "TensorListPushBack_5:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_6"
      value: "TensorListPushBack_6:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_7"
      value: "TensorListPushBack_7:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_8"
      value: "TensorListPushBack_8:output_handle:0"
    }
    ret {
      key: "tensorlistpushback_9"
      value: "TensorListPushBack_9:output_handle:0"
    }
    arg_attr {
      value {
      }
    }
    arg_attr {
      key: 1
      value {
      }
    }
    arg_attr {
      key: 2
      value {
      }
    }
    arg_attr {
      key: 3
      value {
      }
    }
    arg_attr {
      key: 4
      value {
      }
    }
    arg_attr {
      key: 5
      value {
      }
    }
    arg_attr {
      key: 6
      value {
      }
    }
    arg_attr {
      key: 7
      value {
      }
    }
    arg_attr {
      key: 8
      value {
      }
    }
    arg_attr {
      key: 9
      value {
      }
    }
    arg_attr {
      key: 10
      value {
      }
    }
    arg_attr {
      key: 11
      value {
      }
    }
    arg_attr {
      key: 12
      value {
      }
    }
    arg_attr {
      key: 13
      value {
      }
    }
    arg_attr {
      key: 14
      value {
      }
    }
    arg_attr {
      key: 15
      value {
      }
    }
    arg_attr {
      key: 16
      value {
      }
    }
    arg_attr {
      key: 17
      value {
      }
    }
    arg_attr {
      key: 18
      value {
      }
    }
    arg_attr {
      key: 19
      value {
      }
    }
    arg_attr {
      key: 20
      value {
      }
    }
    arg_attr {
      key: 21
      value {
      }
    }
    arg_attr {
      key: 22
      value {
      }
    }
    arg_attr {
      key: 23
      value {
      }
    }
    arg_attr {
      key: 24
      value {
      }
    }
    arg_attr {
      key: 25
      value {
      }
    }
    arg_attr {
      key: 26
      value {
      }
    }
  }
  function {
    signature {
      name: "rnn_while_body_78"
      input_arg {
        name: "rnn_while_loop_counter"
        type: DT_INT32
      }
      input_arg {
        name: "rnn_strided_slice_0"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_1"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_2"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_3"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_4"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_5"
        type: DT_FLOAT
      }
      input_arg {
        name: "rnn_minimum_0"
        type: DT_INT32
      }
      input_arg {
        name: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0"
        type: DT_VARIANT
      }
      input_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0"
        type: DT_FLOAT
      }
      input_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0"
        type: DT_FLOAT
      }
      output_arg {
        name: "add_1"
        type: DT_INT32
      }
      output_arg {
        name: "rnn_strided_slice"
        type: DT_INT32
      }
      output_arg {
        name: "add"
        type: DT_INT32
      }
      output_arg {
        name: "tensorarrayv2write_tensorlistsetitem"
        type: DT_VARIANT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_add_1"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_add_3"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_minimum"
        type: DT_INT32
      }
      output_arg {
        name: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor"
        type: DT_VARIANT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity"
        type: DT_FLOAT
      }
      output_arg {
        name: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity"
        type: DT_FLOAT
      }
    }
    node_def {
      name: "TensorArrayV2Read/TensorListGetItem/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "TensorArrayV2Read/TensorListGetItem"
      op: "TensorListGetItem"
      input: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0"
      input: "placeholder"
      input: "TensorArrayV2Read/TensorListGetItem/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat"
      op: "ConcatV2"
      input: "TensorArrayV2Read/TensorListGetItem:item:0"
      input: "placeholder_3"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis:output:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tidx"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul"
      op: "MatMul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat:output:0"
      input: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "transpose_a"
        value {
          b: false
        }
      }
      attr {
        key: "transpose_b"
        value {
          b: false
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd"
      op: "BiasAdd"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul:product:0"
      input: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "data_format"
        value {
          s: "NHWC"
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 4
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split"
      op: "Split"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const:output:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "num_split"
        value {
          i: 4
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_FLOAT
            tensor_shape {
            }
            float_val: 1.0
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add"
      op: "Add"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:output:2"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul"
      op: "Mul"
      input: "placeholder_2"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh"
      op: "Tanh"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:output:1"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1"
      op: "Mul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1:y:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1"
      op: "Add"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul:z:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1"
      op: "Tanh"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:output:3"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2"
      op: "Mul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1:y:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axis"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1"
      op: "ConcatV2"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2:z:0"
      input: "placeholder_5"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axis:output:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tidx"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1"
      op: "MatMul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1:output:0"
      input: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "transpose_a"
        value {
          b: false
        }
      }
      attr {
        key: "transpose_b"
        value {
          b: false
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1"
      op: "BiasAdd"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1:product:0"
      input: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "data_format"
        value {
          s: "NHWC"
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_4"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 4
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1"
      op: "Split"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3:output:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "num_split"
        value {
          i: 4
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_FLOAT
            tensor_shape {
            }
            float_val: 1.0
          }
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2"
      op: "Add"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:output:2"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3"
      op: "Mul"
      input: "placeholder_4"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2"
      op: "Tanh"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:output:1"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4"
      op: "Mul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4:y:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3"
      op: "Add"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3:z:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3"
      op: "Tanh"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5"
      op: "Sigmoid"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:output:3"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5"
      op: "Mul"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3:y:0"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5:y:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "TensorArrayV2Write/TensorListSetItem"
      op: "TensorListSetItem"
      input: "placeholder_1"
      input: "placeholder"
      input: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5:z:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "add/y"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "add_0"
      op: "AddV2"
      input: "placeholder"
      input: "add/y:output:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "add_1/y"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "add_1_0"
      op: "AddV2"
      input: "rnn_while_loop_counter"
      input: "add_1/y:output:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    ret {
      key: "add"
      value: "add_0:z:0"
    }
    ret {
      key: "add_1"
      value: "add_1_0:z:0"
    }
    ret {
      key: "rnn_minimum"
      value: "rnn_minimum_0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_add_1"
      value: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1:z:0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_add_3"
      value: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3:z:0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity"
      value: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_bias_read_identity_0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity"
      value: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2"
      value: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2:z:0"
    }
    ret {
      key: "rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5"
      value: "rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5:z:0"
    }
    ret {
      key: "rnn_strided_slice"
      value: "rnn_strided_slice_0"
    }
    ret {
      key: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor"
      value: "tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0"
    }
    ret {
      key: "tensorarrayv2write_tensorlistsetitem"
      value: "TensorArrayV2Write/TensorListSetItem:output_handle:0"
    }
    arg_attr {
      value {
      }
    }
    arg_attr {
      key: 1
      value {
      }
    }
    arg_attr {
      key: 2
      value {
      }
    }
    arg_attr {
      key: 3
      value {
      }
    }
    arg_attr {
      key: 4
      value {
      }
    }
    arg_attr {
      key: 5
      value {
      }
    }
    arg_attr {
      key: 6
      value {
      }
    }
    arg_attr {
      key: 7
      value {
      }
    }
    arg_attr {
      key: 8
      value {
      }
    }
    arg_attr {
      key: 9
      value {
      }
    }
    arg_attr {
      key: 10
      value {
      }
    }
    arg_attr {
      key: 11
      value {
      }
    }
  }
  function {
    signature {
      name: "rnn_while_body_78_grad_399"
      input_arg {
        name: "placeholder"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_1"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_2"
        type: DT_INT32
      }
      input_arg {
        name: "placeholder_3"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_4"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_5"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_6"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_7"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_8"
        type: DT_VARIANT
      }
      input_arg {
        name: "placeholder_9"
        type: DT_FLOAT
      }
      input_arg {
        name: "placeholder_10"
        type: DT_FLOAT
      }
      input_arg {
        name: "gradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_placeholder"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_5"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5_grad_mul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_3"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_3_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_3"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_3_grad_mul_1_placeholder_4"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_4_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_2"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_4_grad_mul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_4"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0_0"
        type: DT_FLOAT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat_1"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_2"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2_grad_mul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_1"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_grad_mul_1_placeholder_2"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_1_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_1"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_grad_matmul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat"
        type: DT_VARIANT
      }
      input_arg {
        name: "gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0_0"
        type: DT_VARIANT
      }
      output_arg {
        name: "identity"
        type: DT_INT32
      }
      output_arg {
        name: "identity_1"
        type: DT_INT32
      }
      output_arg {
        name: "identity_2"
        type: DT_INT32
      }
      output_arg {
        name: "identity_3"
        type: DT_VARIANT
      }
      output_arg {
        name: "identity_4"
        type: DT_FLOAT
      }
      output_arg {
        name: "identity_5"
        type: DT_FLOAT
      }
      output_arg {
        name: "identity_6"
        type: DT_FLOAT
      }
      output_arg {
        name: "identity_7"
        type: DT_FLOAT
      }
      output_arg {
        name: "identity_8"
        type: DT_VARIANT
      }
      output_arg {
        name: "identity_9"
        type: DT_FLOAT
      }
      output_arg {
        name: "identity_10"
        type: DT_FLOAT
      }
      output_arg {
        name: "gradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5_grad_mul_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5_grad_mul_1_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_3_grad_mul_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_3_grad_mul_1_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_4_grad_mul_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_4_grad_mul_1_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0"
        type: DT_FLOAT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_1_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2_grad_mul_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2_grad_mul_1_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_grad_mul_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_grad_mul_1_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_1_grad_mul_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_1_grad_mul_1_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_grad_matmul_1_tensorlistpopback"
        type: DT_VARIANT
      }
      output_arg {
        name: "gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0"
        type: DT_VARIANT
      }
    }
    node_def {
      name: "gradients/grad_ys_0"
      op: "Identity"
      input: "placeholder_3"
      attr {
        key: "T"
        value {
          type: DT_VARIANT
        }
      }
    }
    node_def {
      name: "gradients/grad_ys_1"
      op: "Identity"
      input: "placeholder_4"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/grad_ys_2"
      op: "Identity"
      input: "placeholder_5"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/grad_ys_3"
      op: "Identity"
      input: "placeholder_6"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/grad_ys_4"
      op: "Identity"
      input: "placeholder_7"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/grad_ys_5"
      op: "Identity"
      input: "placeholder_8"
      attr {
        key: "T"
        value {
          type: DT_VARIANT
        }
      }
    }
    node_def {
      name: "gradients/grad_ys_6"
      op: "Identity"
      input: "placeholder_9"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/grad_ys_7"
      op: "Identity"
      input: "placeholder_10"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/shape_as_tensor"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/Const"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_FLOAT
            tensor_shape {
            }
            float_val: 0.0
          }
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like"
      op: "Fill"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/shape_as_tensor:output:0"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/Const:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "index_type"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_placeholder"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem"
      op: "TensorListSetItem"
      input: "gradients/grad_ys_0:output:0"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Write/TensorListSetItem_grad/Shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListGetItem"
      op: "TensorListGetItem"
      input: "gradients/grad_ys_0:output:0"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/Shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/AddN"
      op: "AddN"
      input: "gradients/grad_ys_4:output:0"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListGetItem:item:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "_class"
        value {
          list {
            s: "loc:@gradients/grad_ys_4"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_5"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul"
      op: "Mul"
      input: "gradients/AddN:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5_grad_mul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_3"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1"
      op: "Mul"
      input: "gradients/AddN:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_grad/TanhGrad"
      op: "TanhGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_grad/SigmoidGrad"
      op: "SigmoidGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/AddN_1"
      op: "AddN"
      input: "gradients/grad_ys_3:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_grad/TanhGrad:z:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "_class"
        value {
          list {
            s: "loc:@gradients/grad_ys_3"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_3_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_3"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul"
      op: "Mul"
      input: "gradients/AddN_1:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_3_grad_mul_1_placeholder_4"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1"
      op: "Mul"
      input: "gradients/AddN_1:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_4_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_2"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul"
      op: "Mul"
      input: "gradients/AddN_1:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_4_grad_mul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_4"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1"
      op: "Mul"
      input: "gradients/AddN_1:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGrad"
      op: "SigmoidGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_grad/SigmoidGrad"
      op: "SigmoidGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_grad/TanhGrad"
      op: "TanhGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs/s0"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs/s1"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
              }
            }
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs"
      op: "BroadcastGradientArgs"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs/s0:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs/s1:output:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Sum/reduction_indices"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "\000\000\000\000\001\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Sum"
      op: "Sum"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Sum/reduction_indices:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tidx"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "keep_dims"
        value {
          b: false
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Reshape/shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
              }
            }
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Reshape"
      op: "Reshape"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Sum:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Reshape/shape:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tshape"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat/Const"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat"
      op: "ConcatV2"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_grad/SigmoidGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_grad/TanhGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_grad/SigmoidGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat/Const:output:0"
      attr {
        key: "N"
        value {
          i: 4
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tidx"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1_grad/BiasAddGrad"
      op: "BiasAddGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "data_format"
        value {
          s: "NHWC"
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul"
      op: "MatMul"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat:output:0"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "transpose_a"
        value {
          b: false
        }
      }
      attr {
        key: "transpose_b"
        value {
          b: true
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat_1"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1"
      op: "MatMul"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "transpose_a"
        value {
          b: true
        }
      }
      attr {
        key: "transpose_b"
        value {
          b: false
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Rank"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 2
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/mod/Const"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/mod"
      op: "FloorMod"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/mod/Const:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Rank:output:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffset"
      op: "ConcatOffset"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/mod:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1:output:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice"
      op: "Slice"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul:product:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffset:offset:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape:output:0"
      attr {
        key: "Index"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice_1"
      op: "Slice"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul:product:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffset:offset:1"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1:output:0"
      attr {
        key: "Index"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/AddN_2"
      op: "AddN"
      input: "gradients/grad_ys_2:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice:output:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "_class"
        value {
          list {
            s: "loc:@gradients/grad_ys_2"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_2"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul"
      op: "Mul"
      input: "gradients/AddN_2:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2_grad_mul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh_1"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1"
      op: "Mul"
      input: "gradients/AddN_2:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGrad"
      op: "TanhGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGrad"
      op: "SigmoidGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/AddN_3"
      op: "AddN"
      input: "gradients/grad_ys_1:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGrad:z:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "_class"
        value {
          list {
            s: "loc:@gradients/grad_ys_1"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul"
      op: "Mul"
      input: "gradients/AddN_3:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_grad_mul_1_placeholder_2"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1"
      op: "Mul"
      input: "gradients/AddN_3:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_1_grad_mul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_tanh"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul"
      op: "Mul"
      input: "gradients/AddN_3:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_sigmoid_1"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1"
      op: "Mul"
      input: "gradients/AddN_3:sum:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/TensorListPopBack:tensor:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGrad"
      op: "SigmoidGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGrad"
      op: "SigmoidGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGrad"
      op: "TanhGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum/reduction_indices"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "\000\000\000\000\001\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum"
      op: "Sum"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum/reduction_indices:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tidx"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "keep_dims"
        value {
          b: false
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape/shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
              }
            }
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape"
      op: "Reshape"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape/shape:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tshape"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/Const"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat"
      op: "ConcatV2"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGrad:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/Const:output:0"
      attr {
        key: "N"
        value {
          i: 4
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "Tidx"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad"
      op: "BiasAddGrad"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "data_format"
        value {
          s: "NHWC"
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul"
      op: "MatMul"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat:output:0"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0_0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "transpose_a"
        value {
          b: false
        }
      }
      attr {
        key: "transpose_b"
        value {
          b: true
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: -1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack"
      op: "TensorListPopBack"
      input: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_grad_matmul_1_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_concat"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shape:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1"
      op: "MatMul"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "transpose_a"
        value {
          b: true
        }
      }
      attr {
        key: "transpose_b"
        value {
          b: false
        }
      }
    }
    node_def {
      name: "gradients/AddN_4"
      op: "AddN"
      input: "gradients/grad_ys_7:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1_grad/BiasAddGrad:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad:output:0"
      attr {
        key: "N"
        value {
          i: 3
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "_class"
        value {
          list {
            s: "loc:@gradients/grad_ys_7"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Rank"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 2
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/mod/Const"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/mod"
      op: "FloorMod"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/mod/Const:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Rank:output:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
              dim {
                size: 2
              }
            }
            tensor_content: "@\000\000\000\200\000\000\000"
          }
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset"
      op: "ConcatOffset"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/mod:z:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1:output:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice"
      op: "Slice"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul:product:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset:offset:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape:output:0"
      attr {
        key: "Index"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1"
      op: "Slice"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul:product:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset:offset:1"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1:output:0"
      attr {
        key: "Index"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/AddN_5"
      op: "AddN"
      input: "gradients/grad_ys_6:output:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1:product:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1:product:0"
      attr {
        key: "N"
        value {
          i: 3
        }
      }
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "_class"
        value {
          list {
            s: "loc:@gradients/grad_ys_6"
          }
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength"
      op: "TensorListLength"
      input: "gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0_0"
    }
    node_def {
      name: "gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape"
      op: "TensorListElementShape"
      input: "gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0_0"
      attr {
        key: "shape_type"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListReserve"
      op: "TensorListReserve"
      input: "gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape:element_shape:0"
      input: "gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength:length:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
      attr {
        key: "shape_type"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListSetItem"
      op: "TensorListSetItem"
      input: "gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListReserve:handle:0"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice:output:0"
      attr {
        key: "element_dtype"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "gradients/AddN_6"
      op: "AddN"
      input: "gradients/grad_ys_5:output:0"
      input: "gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListSetItem:output_handle:0"
      attr {
        key: "N"
        value {
          i: 2
        }
      }
      attr {
        key: "T"
        value {
          type: DT_VARIANT
        }
      }
      attr {
        key: "_class"
        value {
          list {
            s: "loc:@gradients/grad_ys_5"
          }
        }
      }
    }
    node_def {
      name: "add/y"
      op: "Const"
      attr {
        key: "dtype"
        value {
          type: DT_INT32
        }
      }
      attr {
        key: "value"
        value {
          tensor {
            dtype: DT_INT32
            tensor_shape {
            }
            int_val: 1
          }
        }
      }
    }
    node_def {
      name: "add"
      op: "AddV2"
      input: "placeholder"
      input: "add/y:output:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "Identity"
      op: "Identity"
      input: "add:z:0"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "Identity_1"
      op: "Identity"
      input: "placeholder_1"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "Identity_2"
      op: "Identity"
      input: "placeholder_2"
      attr {
        key: "T"
        value {
          type: DT_INT32
        }
      }
    }
    node_def {
      name: "Identity_3"
      op: "Identity"
      input: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem:output_handle:0"
      attr {
        key: "T"
        value {
          type: DT_VARIANT
        }
      }
    }
    node_def {
      name: "Identity_4"
      op: "Identity"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "Identity_5"
      op: "Identity"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "Identity_6"
      op: "Identity"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul:z:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "Identity_7"
      op: "Identity"
      input: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice_1:output:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "Identity_8"
      op: "Identity"
      input: "gradients/AddN_6:sum:0"
      attr {
        key: "T"
        value {
          type: DT_VARIANT
        }
      }
    }
    node_def {
      name: "Identity_9"
      op: "Identity"
      input: "gradients/AddN_5:sum:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    node_def {
      name: "Identity_10"
      op: "Identity"
      input: "gradients/AddN_4:sum:0"
      attr {
        key: "T"
        value {
          type: DT_FLOAT
        }
      }
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_1_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0"
      value: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_1_grad_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_kernel_read_identity_0_0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_matmul_grad_matmul_1_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_1_grad_mul_1_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_1_grad_mul_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2_grad_mul_1_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_2_grad_mul_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_3_grad_mul_1_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_3_grad_mul_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_4_grad_mul_1_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_4_grad_mul_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5_grad_mul_1_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_5_grad_mul_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_grad_mul_1_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_rnn_multi_rnn_cell_cell_0_basic_lstm_cell_mul_grad_mul_tensorlistpopback"
      value: "gradients/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0"
      value: "gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0_0"
    }
    ret {
      key: "gradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_tensorlistpopback"
      value: "gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:output_handle:0"
    }
    ret {
      key: "identity"
      value: "Identity:output:0"
    }
    ret {
      key: "identity_1"
      value: "Identity_1:output:0"
    }
    ret {
      key: "identity_10"
      value: "Identity_10:output:0"
    }
    ret {
      key: "identity_2"
      value: "Identity_2:output:0"
    }
    ret {
      key: "identity_3"
      value: "Identity_3:output:0"
    }
    ret {
      key: "identity_4"
      value: "Identity_4:output:0"
    }
    ret {
      key: "identity_5"
      value: "Identity_5:output:0"
    }
    ret {
      key: "identity_6"
      value: "Identity_6:output:0"
    }
    ret {
      key: "identity_7"
      value: "Identity_7:output:0"
    }
    ret {
      key: "identity_8"
      value: "Identity_8:output:0"
    }
    ret {
      key: "identity_9"
      value: "Identity_9:output:0"
    }
    arg_attr {
      value {
      }
    }
    arg_attr {
      key: 1
      value {
      }
    }
    arg_attr {
      key: 2
      value {
      }
    }
    arg_attr {
      key: 3
      value {
      }
    }
    arg_attr {
      key: 4
      value {
      }
    }
    arg_attr {
      key: 5
      value {
      }
    }
    arg_attr {
      key: 6
      value {
      }
    }
    arg_attr {
      key: 7
      value {
      }
    }
    arg_attr {
      key: 8
      value {
      }
    }
    arg_attr {
      key: 9
      value {
      }
    }
    arg_attr {
      key: 10
      value {
      }
    }
    arg_attr {
      key: 11
      value {
      }
    }
    arg_attr {
      key: 12
      value {
      }
    }
    arg_attr {
      key: 13
      value {
      }
    }
    arg_attr {
      key: 14
      value {
      }
    }
    arg_attr {
      key: 15
      value {
      }
    }
    arg_attr {
      key: 16
      value {
      }
    }
    arg_attr {
      key: 17
      value {
      }
    }
    arg_attr {
      key: 18
      value {
      }
    }
    arg_attr {
      key: 19
      value {
      }
    }
    arg_attr {
      key: 20
      value {
      }
    }
    arg_attr {
      key: 21
      value {
      }
    }
    arg_attr {
      key: 22
      value {
      }
    }
    arg_attr {
      key: 23
      value {
      }
    }
    arg_attr {
      key: 24
      value {
      }
    }
    arg_attr {
      key: 25
      value {
      }
    }
    arg_attr {
      key: 26
      value {
      }
    }
    arg_attr {
      key: 27
      value {
      }
    }
  }
}
versions {
  producer: 119
  min_consumer: 12
}
