#!/bin/bash

ls > arquivos.txt
a=$(wc -l arquivos.txt | cut -f1 -d ' ')
tip=$(sed -n 'p' arquivos.txt)
md5sum $tip > verificar.txt

for i in $(seq 1 $a); do
	b=$(sed -n '1p' arquivos.txt)
	d=$(md5sum $b)
	sed -i 1d arquivos.txt
        sed -i 1d verificar.txt
	grep $d verificar.txt && echo 'Arquivo igual=' $b 
	
done
rm verificar.txt arquivos.txt 
