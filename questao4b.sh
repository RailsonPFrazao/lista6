#!/bin/bash
paste -sd+ num.txt | bc
rm num.txt
