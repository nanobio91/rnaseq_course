#!/bin/bash
#SBATCH --mail-user=antonio.iuliano@students.unibe.ch
#SBATCH --mail-type=begin, end,fail
#SBATCH --job-name="QC"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=1G

module add UHTS/Quality_control/fastqc/0.11.9

fastqc -t 4 /data/courses/rnaseq_course/toxoplasma_de/antonio_workspace/reads2/*
