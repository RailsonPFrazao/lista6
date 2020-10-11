#!/bin/bash

ls $1 > teste.txt
rept=$(wc -l teste.txt | cut -d ' ' -f1)

for i in $(seq 1 $rept); do
	arq=$(sed -n $[i]p teste.txt)
	wc -l $1/$arq >> teste1.txt
done

sort -n -t: -k1 teste1.txt > ordenado.txt
cat ordenado.txt
rm teste1.txt teste.txt

