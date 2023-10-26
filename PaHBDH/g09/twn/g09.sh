#!/bin/bash -l 
#SBATCH -A snic2021-3-1
#SBATCH -N 1 
#SBATCH --reservation=devel 
#SBATCH -t 01:00:00 

module load Gaussian/09.E.01-avx-nsc1-bdist

#time g09.orig 3ov.com
time g09 tyr_gesp.com


