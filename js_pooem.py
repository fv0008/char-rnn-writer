import tensorflow.compat.v1 as tf
from model import char_rnn,FLAGS
from utils import build_dataset
import numpy as np
from tensorflow.python.saved_model import tag_constants
from tensorflow.python.saved_model import signature_constants
tf.disable_eager_execution()

FLAG=FLAGS()
poems_vector, word_int_map, vocabularies = build_dataset(FLAG.poems_path,FLAG.name_path)
input_data = tf.placeholder(tf.int32, [1, None])
end_points = char_rnn(model='lstm', input_data=input_data, output_data=None, vocab_size=len(
    vocabularies),rnn_size=FLAG.rnn_size,num_layers=FLAG.num_layers,batch_size=FLAG.batch_size, learning_rate=FLAG.learning_rate)


def to_word(predict, vocabs):
    predict = predict[0]
    predict /= np.sum(predict)
    sample = np.random.choice(np.arange(len(predict)), p=predict)
    if sample > len(vocabs):
        return vocabs[-1]
    else:
        return vocabs[sample]

def gen_poem(begin_word):


    #saver = tf.train.Saver(tf.global_variables())
    init_op = tf.group(tf.global_variables_initializer(), tf.local_variables_initializer())
    with tf.Session() as sess:
        sess.run(init_op)

        MetaGraphDef = tf.saved_model.loader.load(sess,  [tag_constants.TRAINING], FLAG.result_dir + "/model_complex")
        SignatureDef_d = MetaGraphDef.signature_def
        SignatureDef = SignatureDef_d[tf.saved_model.signature_constants.CLASSIFY_INPUTS]

        predictionname      = SignatureDef.outputs['prediction'].name
        #input_dataname       = SignatureDef.inputs['input_data'].name
        #output_targetsname   = SignatureDef.inputs['output_targets'].name
        prediction      = sess.graph.get_tensor_by_name(predictionname )
        #input_data      = sess.graph.get_tensor_by_name(input_dataname )
        #output_targets  = sess.graph.get_tensor_by_name(output_targetsname)
        #end_points['prediction'] = prediction

        #checkpoint = tf.train.latest_checkpoint(FLAG.result_dir)
        #saver.restore(sess, checkpoint)


        x = np.array([list(map(word_int_map.get, FLAG.start_token))])

        [predict, last_state] = sess.run([end_points['prediction'], end_points['last_state']],
                                         feed_dict={input_data: x})
        if begin_word:
            word = begin_word
        else:
            word = to_word(predict, vocabularies)
        poem_ = ''

        i = 0
        while word != FLAG.end_token:
            poem_ += word
            i += 1
            if i >= 3:
                break
            x = np.zeros((1, 1))
            x[0, 0] = word_int_map[word]
            [predict, last_state] = sess.run([end_points['prediction'], end_points['last_state']],
                                             feed_dict={input_data: x, end_points['initial_state']: last_state})
            word = to_word(predict, vocabularies)

        return poem_

def pretty_print_name(name_):
    name= "".join([word for word in name_ if word!='B'])
    print(name)
    return name

def pretty_print_poem(poem_):
    poem_sentences = poem_.split('。')
    for s in poem_sentences:
        if s != '' and len(s) > 10:
            print(s + '。')

if __name__ == '__main__':



    count = 0
    while (count < 9):
        begin_char = input('## please input the first character:')
        countname = 0
        while (countname < 9999):
            poem = gen_poem(begin_char)
            pretty_print_name(name_=poem)
            countname += 1