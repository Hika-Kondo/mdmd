# test

## データセット生成
`./01-make-datasets.py -i input/Protein-coord.xvg input/Protein-force.xvg 0 100 --gro input/solv_ions_prot.gro`

## 学習
`./02-learning.py -i workspace/01-make-datasets/datasets.hdf5 -a CA`
