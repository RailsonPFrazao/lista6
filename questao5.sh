#!/bin/bash
echo $* > arquivos.txt
for i in $(seq 1 $#); do
	a=$(cut -f$i -d ' ' arquivos.txt)
	find $a &> teste.txt && echo 'Existe' || echo 'Não existe'
done
rm arquivos.txt
rm teste.txt
