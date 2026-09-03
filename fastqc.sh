#!/bin/bash

#SBATCH --account=bgmp                    
#SBATCH --partition=bgmp                  
#SBATCH --cpus-per-task=8                 
#SBATCH --mem=16GB                        
#SBATCH --job-name=fastqc
#SBATCH --time=12:00:00


export PATH=/projects/bgmp/hvsev/bioinfo/Bi623/ICA/hs3verson-Bi623-ICA1/sratoolkit.3.4.1-ubuntu64/bin:$PATH
/usr/bin/time -v pixi run fastqc *.fastq -o /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/