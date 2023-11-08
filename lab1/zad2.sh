#!/bin/bash

#SBATCH -p plgrid

#SBATCH -N 1

#SBATCH --ntasks-per-node=2

head -$SLURM_ARRAY_TASK_ID /etc/passwd
