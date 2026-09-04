#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=16
#SBATCH --job-name=star_db
#SBATCH --time=12:00:00

cd /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA

/usr/bin/time -v pixi run STAR --runThreadN 16 \
 --runMode genomeGenerate \
  --genomeDir /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Campylomormyrus_compressirostris_db \
   --genomeFastaFiles /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus.fasta \
    --sjdbGTFfile /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus.gtf