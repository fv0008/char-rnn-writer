import os
import numpy as np
import tensorflow.compat.v1 as tf
from model import char_rnn,FLAGS
from utils import build_dataset,build_name_dataset,generate_batch
tf.disable_eager_execution()



def train():
    FLAG = FLAGS()
    poems_vector, word_to_int, vocabularies = build_dataset(FLAG.poems_path,FLAG.name_path)

    batches_inputs,batches_outputs=generate_batch(FLAG.batch_size,poems_vector,word_to_int)

    input_data=tf.placeholder(tf.int32,[FLAG.batch_size,None])
    output_targets=tf.placeholder(tf.int32,[FLAG.batch_size,None])
    #z = tf.log(output_targets, name="namemodel")
    end_points=char_rnn(model='lstm',
        input_data=input_data,
        output_data=output_targets,
        vocab_size=len(vocabularies),
        rnn_size=256,
        num_layers=3,
        batch_size=FLAG.batch_size,
        learning_rate=FLAG.learning_rate)

    saver=tf.train.Saver(tf.global_variables())
    init_op=tf.group(tf.global_variables_initializer(),tf.local_variables_initializer())
    with tf.Session() as sess:
        sess.run(init_op)

        start_epoch=0
        checkpoint=tf.train.latest_checkpoint(FLAG.result_dir)
        if checkpoint: # 从上次结束的地方继续训练
            saver.restore(sess,checkpoint)
            print("## restore from the checkpoint {0}".format(checkpoint))
            start_epoch += int(checkpoint.split('-')[-1])
        print('## start training...')
        try:
            for epoch in range(start_epoch,FLAG.epochs):
                n=0
                n_chunk = len(poems_vector) // FLAG.batch_size
                for batch in range(n_chunk):
                    loss, _, _ = sess.run([
                        end_points['total_loss'],
                        end_points['last_state'],
                        end_points['train_op']
                    ], feed_dict={input_data: batches_inputs[n], output_targets: batches_outputs[n]})
                    n += 1
                    print('Epoch: %d, batch: %d, training loss: %.6f' % (epoch, batch, loss))
                if epoch % 10 == 0:
                    saver.save(sess, os.path.join(FLAG.result_dir, FLAG.model_prefix), global_step=epoch)
        except KeyboardInterrupt:
            print('## Interrupt manually, try saving checkpoint for now...')
            saver.save(sess, os.path.join(FLAG.result_dir, FLAG.model_prefix), global_step=epoch)
            print('## Last epoch were saved, next time will start from epoch {}.'.format(epoch))
        saver.save(sess, FLAG.result_dir+'/model/'+"model.ckpt")
        tf.train.write_graph(sess.graph_def, FLAG.result_dir+'/model/', 'graph.pb')

def main(_):
    train()

if __name__ == '__main__':
    tf.app.run()