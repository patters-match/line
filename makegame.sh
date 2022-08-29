#!/bin/bash

# this script is intended to be invoked by a Sublime build scipt

# pass the code filename to be compiled as the first parameter ($file)
# pass the code base filename (without extension) the second parameter ($file_base_name)
# pass the code working folder name as the third parameter ($file_path)

file=$1
file_base_name=$2
file_path=$3

echo "~~~GAME~~~"
zmakebas -n Line -o ${file_path}/${file_base_name}.tap -l -s 1 ${file} || exit
