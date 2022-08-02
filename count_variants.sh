#!/bin/bash

read -p "Enter the VCF file to be explored: " filename
echo $filename

chr_list=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "X" "Y" "M")

for chrom in ${chr_list[@]}
do
count=$(bcftools view -r $chrom $filename | grep -v -c '^#')
echo "$chrom:$count"
done	
