#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem-per-gpu=20G
#SBATCH --cpus-per-task=8
#SBATCH --time=00:02:30
#SBATCH --gpus=rtx3090
#SBATCH --partition=compute
#SBATCH --signal=SIGUSR1@90

hostname
echo SLURM_NTASKS: $SLURM_NTASKS
#echo SLURM_JOB_NAME: $SLURM_JOB_NAME

pwd
#export NCCL_DEBUG=INFO
export PYTHONFAULTHANDLER=1
$1 train_mini.py
