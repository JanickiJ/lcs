#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --time=00:20:00

echo "[$(date +%H:%M:%S)] Command: srun -N 1 -n 1 --exclusive sleep 10m"
srun -N 1 -n 1 --exclusive sleep 10m &
echo "[$(date +%H:%M:%S)] Command: srun -N 1 -n 1 --exclusive sleep 10m"
srun -N 1 -n 1 --exclusive sleep 10m &
wait
echo "[$(date +%H:%M:%S)] Exit"
