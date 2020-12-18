#!/bin/sh

make_data () {
    python /make_dataset/01-make-datasets.py -i /input/Protein-coord.xvg /input/Protein-force.xvg 0 100 --gro /input/solv_ions_prot.gro -f
}

train () {
    python /train/02-learning.py -i /res/01-make-datasets/datasets.hdf5 -a CA
}


if [ $1 = "all" ]; then
    echo "all"
    make_data
    train

elif [$1 = "make_data"]; then
    echo "make data"
    make_data

elif [$1 = "train"]; then
    echo "train"
    train

else
    echo "error"
fi

