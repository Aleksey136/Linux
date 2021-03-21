#!/bin/bash
file='MOCK_DATA.csv'
IFS=$'\n'
> test1.txt
for var in $(cat $file)
do
a=$(( $a + 1 ))
IFS=$','
for var2 in $var
do
b=0
IFS=$'/'
for var3 in $var2
do
b=$(( $b + 1 ))
done
if (( $b == 6 )); then
IFS=$','
echo $a: $var2 >> test1.txt
fi
done
done
