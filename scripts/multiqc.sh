
#!/bin/bash
#SBATCH --mail-user=antonio.iuliano@students.unibe.ch
#SBATCH --mail-type=fail
#SBATCH --job-name="QC"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=1G

module add UHTS/Analysis/MultiQC/1.8

multiqc /data/courses/rnaseq_course/toxoplasma_de/antonio_workspace/reads/*
