#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --account=bgmp
#SBATCH --job-name=htseq_385
#SBATCH --output=htseq_385_%j.out

SAM="/projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/align_385Aligned.out.sam"
GFF="/projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part3/campylomormyrus.gff"

cd /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA

/usr/bin/time -v pixi run htseq-count \
    --stranded=yes \
    -i Parent \
    $SAM \
    $GFF \
    > ../Project2_Part3/htseq_385.txt