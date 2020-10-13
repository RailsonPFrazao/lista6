#!/bin/bash

for i in {a..z}; do
	mkdir $i
	echo "#!/usr/bin/env python3
print('Rapi Hellow Uin!')" > $i/$i.py
	chmod +x $i/$i.py
done
