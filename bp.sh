#!/bin/bash

path=$1
file_extension=$2
folder=$3
archived_folder=$4

mkdir $3

find $1 -name "*.$file_extension" -exec cp {} $3 \; 2>/dev/null
tar -czvf $4 ./$3 > /dev/null

echo "done"
