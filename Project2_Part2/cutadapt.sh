#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --account=bgmp
#SBATCH --job-name=cutadapt
#SBATCH --output=cutadapt_%j.out

cd /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA

# Sample 1: SRR25630385 (a; R1 adapter, A; piR2 adapter, o;output for R1, p; output for R2)
/usr/bin/time -v pixi run cutadapt \
-a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
-A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/cut_outputs/SRR25630385_1.cut.fastq.gz \
-p /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/cut_outputs/SRR25630385_2.cut.fastq.gz \
    /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/SRR25630385_1.fastq \
    /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/SRR25630385_2.fastq

# Sample 2 SRR25630409
/usr/bin/time -v pixi run cutadapt \
-a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
-A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/cut_outputs/SRR25630409_1.cut.fastq.gz \
-p /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/cut_outputs/SRR25630409_2.cut.fastq.gz \
    /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/SRR25630409_1.fastq \
    /projects/bgmp/hvsev/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/SRR25630409_2.fastq
