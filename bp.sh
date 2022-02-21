#!/bin/bash

path=$1
file_extension=$2
folder=$3
archived_folder=$4

old_path=pwd
cd $1
mkdir $3
# find $1 -name "*.$2" -exec cp --backup=numbered {} ./$3 \; > /dev/null
cp *.$2 $3/
mv -r $3/ $old_path/
cd $old_path
tar -czvf $4 ./$3 > /dev/null
echo "done"
