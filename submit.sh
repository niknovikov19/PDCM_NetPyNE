#!/bin/bash
#$ -cwd
#$ -N PD_test
#$ -q cpu.q
#$ -pe smp 15
#$ -l h_vmem=16G
#$ -l h_rt=1:00:00
#$ -o /ddn/niknovikov19/repo/PDCM_NetPyNE/log/PD_test.txt
#$ -e /ddn/niknovikov19/repo/PDCM_NetPyNE/log/PD_test.txt

source ~/.bashrc
#echo $(pwd)
conda activate netpyne3
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH
cd /ddn/niknovikov19/repo/PDCM_NetPyNE/
mpiexec -n $NSLOTS -hosts $(hostname) nrniv -python -mpi init.py