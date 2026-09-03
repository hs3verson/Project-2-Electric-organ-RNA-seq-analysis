#!/bin/bash

#SBATCH --account=bgmp                    
#SBATCH --partition=bgmp                  
#SBATCH --cpus-per-task=8                 
#SBATCH --mem=16GB                        
#SBATCH --job-name=prefetch
#SBATCH --time=12:00:00

export PATH=/projects/bgmp/hvsev/bioinfo/Bi623/ICA/hs3verson-Bi623-ICA1/sratoolkit.3.4.1-ubuntu64/bin:$PATH
/usr/bin/time -v prefetch SRR25630409 --max-size u
/usr/bin/time -v prefetch SRR25630385 --max-size u