import tensorflow.compat.v1 as tf
import numpy as np


# 参数设置
tf.app.flags.DEFINE_integer('batch_size',64,'batch size.')
tf.app.flags.DEFINE_float('learning_rate',0.0002,'learning rate.')
tf.app.flags.DEFINE_string('result_dir','result/poem','trained model save path.')
tf.app.flags.DEFINE_string('poems_path','data/poems.txt','file of poems dataset.')
tf.app.flags.DEFINE_string('name_path','data/names.txt','file of poems dataset.')
tf.app.flags.DEFINE_string('model_prefix','poems','model save prefix.')
tf.app.flags.DEFINE_integer('epochs',51,'train how many epochs.')
tf.app.flags.DEFINE_string('start_token','B','start_token')
tf.app.flags.DEFINE_string('end_token','E','end_token')
tf.app.flags.DEFINE_string('corpus_file','data/poems.txt','corpus_file')


def FLAGS():
    return tf.app.flags.FLAGS

def char_rnn(model,input_data,output_data,vocab_size,rnn_size=128,num_layers=2,batch_size=64,
             learning_rate=0.01):
    """

    :param model: rnn单元的类型 rnn, lstm gru
    :param input_data: 输入数据
    :param output_data: 输出数据
    :param vocab_size: 词汇大小
    :param rnn_size:
    :param num_layers:
    :param batch_size:
    :param learning_rate:学习率
    :return:
    """
    end_points = {}

    if model == 'rnn':
        cell_fun =  tf.nn.rnn_cell.BasicRNNCell
    elif model == 'gru':
        cell_fun =  tf.nn.rnn_cell.GRUCell
    elif model == 'lstm':
        cell_fun =  tf.nn.rnn_cell.BasicLSTMCell

    cell = cell_fun(rnn_size, state_is_tuple=True)
    cell = tf.nn.rnn_cell.MultiRNNCell([cell] * num_layers, state_is_tuple=True)

    if output_data is not None:
        initial_state = cell.zero_state(batch_size, tf.float32)
    else:
        initial_state = cell.zero_state(1, tf.float32)

    with tf.device("/cpu:0"):
        embedding = tf.get_variable('embedding', initializer=tf.random.uniform(
            [vocab_size + 1, rnn_size], -1.0, 1.0))
        inputs = tf.nn.embedding_lookup(embedding, input_data)

    # [batch_size, ?, rnn_size] = [64, ?, 128]
    outputs, last_state = tf.nn.dynamic_rnn(cell, inputs, initial_state=initial_state)
    output = tf.reshape(outputs, [-1, rnn_size])

    weights = tf.Variable(tf.random.truncated_normal([rnn_size, vocab_size + 1]))
    bias = tf.Variable(tf.zeros(shape=[vocab_size + 1]))
    logits = tf.nn.bias_add(tf.matmul(output, weights), bias=bias)
    # [?, vocab_size+1]


    if output_data is not None:
        # 独热编码
        labels = tf.one_hot(tf.reshape(output_data, [-1]), depth=vocab_size + 1)
        # [?, vocab_size+1]

        loss = tf.nn.softmax_cross_entropy_with_logits(labels=labels, logits=logits)
        # [?, vocab_size+1]

        total_loss = tf.reduce_mean(loss)
        train_op = tf.train.AdamOptimizer(learning_rate).minimize(total_loss)

        end_points['initial_state'] = initial_state
        end_points['output'] = output
        end_points['train_op'] = train_op
        end_points['total_loss'] = total_loss
        end_points['loss'] = loss
        end_points['last_state'] = last_state
    else:
        prediction = tf.nn.softmax(logits)

        end_points['initial_state'] = initial_state
        end_points['last_state'] = last_state
        end_points['prediction'] = prediction

    return end_points