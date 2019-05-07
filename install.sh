#!/bin/bash

echo a
echo b
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
bash  Anaconda3-2019.03-Linux-x86_64.sh
source ~/.bashrc
conda install --channel=numba llvmlite
conda install -c conda-forge rply
echo 'alias swapnil=python -W ignore run.py'>>~/.bashrc
source ~/.bashrc
