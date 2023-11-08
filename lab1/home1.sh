#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=6
#SBATCH --time=00:20:00
#SBATCH --array=0-10


module add pov-ray

first_frame_idx=$((3 * $SLURM_ARRAY_TASK_ID + 1))
last_frame_idx=$((3 * $SLURM_ARRAY_TASK_ID + 3))

povray Subset_Start_Frame=${first_frame_idx} Subset_End_Frame=${last_frame_idx} animation_a_.ini
