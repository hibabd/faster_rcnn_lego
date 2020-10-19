#!/bin/sh

#SBATCH --partition=stud-ewi
#SBATCH --qos=stud-ewi
#SBATCH --time=03:59:59
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=9000
#SBATCH --mail-type=END
#SBATCH --gres=gpu

module use /opt/insy/modulefiles
module load cuda/10.0 cudnn/10.0-7.4.2.24

srun python faster_rcnn_cp.py