#!/bin/bash
file='MOCK_DATA.csv'
IFS=$'\n'
> test.txt
for var in $(cat $file)
do
a=$(( $a + 1 ))
IFS=$','
for var2 in $var
do
echo $a: $var2 | awk '/\..+\.31\./' >> test.txt
done
done
