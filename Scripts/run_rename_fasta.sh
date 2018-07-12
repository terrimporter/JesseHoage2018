#!/bin/bash
#Mar.28/17 by Teresita M. Porter
#Runs rename_fasta.plx on a directory of files.  This Perl script adds base name (sample name) to fasta header prior to global denoising.
#This script then concatenates the output to permit a global analysis in VSEARCH/USEARCH
#USAGE sh run_rename_fasta.sh

for f in *.fasta
do

rename_fasta $f

done

for g in *.fa
do

cat $g >> cat.fasta

done

echo 'Job is done.'
