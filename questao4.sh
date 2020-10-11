#!/bin/bash
RANDOM=$$
rm num.txt
for i in $(seq 1 101); do
	echo $RANDOM >> num.txt
done
wc -l num.txt
