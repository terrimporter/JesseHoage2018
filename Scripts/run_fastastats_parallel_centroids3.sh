#!/bin/zsh
#July 12, 2018 by Teresita M. Porter
#Script to run fasta_stats_parallel.plx on a directory of FASTA files
#USAGE zsh run_fastastats_parallel_centroids3.sh

echo sample'\t'numseqs'\t'minlength'\t'maxlength'\t'meanlength'\t'modelength

NR_CPUS=2
count=0

for f in *.centroids3
do

stats $f &

let count+=1
[[ $((count%NR_CPUS)) -eq 0 ]] && wait

done
	
wait

echo "All jobs are done"
