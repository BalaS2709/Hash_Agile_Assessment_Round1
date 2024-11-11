#!/bin/bash
arr=(10 50 30 80 20 81 90)
max1=
max2=
for i in "${arr[@]}"; do
if (( i > max1 )); then
max2=$max1
max1=$i
elif (( i > max2 && i != max1 )); then
max2=$i
fi
done
if [ -n "$max2" ]; then
echo "Second Largest Element is : $max2"
fi
