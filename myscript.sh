#!/bin/bash
file='MOCK_DATA.csv'
IFS=$'\n'
> test.txt
for var in $(cat $file)
do
a=$(( $a + 1 ))
echo $a:  $var | awk '/\..+\.31\./' >> test.txt
done
