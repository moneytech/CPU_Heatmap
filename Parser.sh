#!/bin/bash

CPU_Set=0,1,2,3,4,5,6,7
Time_Span=10
sar 1 "$Time_Span" -P "$CPU_Set" > SAR_CPU.csv
sed -i '1d' SAR_CPU.csv
sed -i "s/  */,/g" SAR_CPU.csv
sed -i '/^$/d' SAR_CPU.csv

python3 CPU_Heatmap.py