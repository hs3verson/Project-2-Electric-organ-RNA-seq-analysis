#!/bin/bash
#SBATCH --time=01-00:00
#SBATCH --partition=bgmp
#SBATCH --account=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=16GB
#SBATCH --constraint=turin
#SBATCH --job-name=trimmomatic
#SBATCH --output=trimmomatic_%j.out

cd /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA

# Sample 1 SRR25630385

/usr/bin/time -v pixi run trimmomatic PE -threads 8 -Xmx8g \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/cut_outputs/SRR25630385_1.cut.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/cut_outputs/SRR25630385_2.cut.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/trimmed_outputs/SRR25630385_1_paired.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/trimmed_outputs/SRR25630385_1_unpaired.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/trimmed_outputs/SRR25630385_2_paired.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/trimmed_outputs/SRR25630385_2_unpaired.fastq.gz \
 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35



# Sample 2 SRR25630409

/usr/bin/time -v pixi run trimmomatic PE -threads 8 -Xmx8g \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/cut_outputs/SRR25630409_1.cut.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/cut_outputs/SRR25630409_2.cut.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/trimmed_outputs/SRR25630409_1_paired.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/trimmed_outputs/SRR25630409_1_unpaired.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/trimmed_outputs/SRR25630409_2_paired.fastq.gz \
 /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/trimmed_outputs/SRR25630409_2_unpaired.fastq.gz \
 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35
