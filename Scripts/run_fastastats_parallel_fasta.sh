#!/bin/bash
#July 12, 2018 by Teresita M. Porter
#Script to run fasta_stats_parallel.plx on a directory of FASTA files
#USAGE zsh run_fastastats_parallel_fasta.sh

echo -e sample'\t'numseqs'\t'minlength'\t'maxlength'\t'meanlength'\t'modelength

NR_CPUS=10
count=0

for f in *.fasta
do

stats $f &

let count+=1
[[ $((count%NR_CPUS)) -eq 0 ]] && wait

done
	
wait

echo "All jobs are done"
