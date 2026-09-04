#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=16
#SBATCH --account=bgmp
#SBATCH --job-name=agat
#SBATCH --output=agat_%j.out

cd /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA

/usr/bin/time -v pixi run agat_convert_sp_gff2gtf.pl \
 --gff /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus.gff \
 -o /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus.gtf