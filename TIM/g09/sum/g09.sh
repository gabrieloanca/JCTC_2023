#!/bin/bash -l 

#SBATCH -A snic2022-3-2
#SBATCH -t 03:00:00 
#SBATCH -n 1
#SBATCH -c 8

module load Gaussian/09.E.01-avx-nsc1-bdist

#time g09.orig 3ov.com
time g09 sub-_esp.com


