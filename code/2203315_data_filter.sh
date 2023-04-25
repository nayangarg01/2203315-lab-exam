#!/bin/bash 
file=$1
name=$2
value=$3

out_file=${file::2}$name$value

touch $out_file.csv      #creates the file name as required in the question

echo "$1 $2 $3 " > $out_file.csv         #adds the first line to the file

wc -l $1 >> $out_file.csv

head -n 1 $1 >> $out_file.csv         #adds the second line to the file

grep "$value" $file >> $out_file.csv              #adds the third line to the file









