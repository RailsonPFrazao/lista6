#!/bin/bash
soma=0
for i in $(seq $1 $2); do
	soma=$(($soma+$i))
done
echo $soma

