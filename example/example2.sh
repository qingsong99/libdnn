#!/bin/bash -e

# Example 2
TRAIN=data/train.dat
TEST=data/test.dat
stacked_rbm=model/train.dat.rbm
model=model/train.dat.model

opts="--normalize 1 --input-dim 20"

dnn-init $opts --output-dim 2 --nodes 64-64 $TRAIN $stacked_rbm
dnn-train $opts $TRAIN $stacked_rbm $model --min-acc 0.74
dnn-predict $opts $TEST $model
