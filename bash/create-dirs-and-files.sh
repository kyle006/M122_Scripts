#!/bin/bash
if [ "$1" == "-h" ]; then
    echo "Usage: $0 <num_of_directories> <num_of_files> <file_to_copy>"
    echo "First Arg: Number of directories to create"
    echo "Second Arg: Number of files to create in each directory"
    echo "Third Arg: File to copy to the dirs"
    exit 0
fi

X=$1
Y=$2
FILE_TO_COPY=$3

if [ $X -lt 0 ]; then
    echo "Argument X can not be less then 0"
fi

if [ $Y -lt 0 ]; then
    echo "Argument Y can not be less then 0"
fi

N=1
while [ $N -le $X ]; do
    mkdir $N
    M=1   
    while [ $M -le $Y ]; do
        if [ -f "$M" ]; then
            echo "ERROR: file $N/$M does already exist."
            exit 1
        fi

        if [ ! -z $FILE_TO_COPY ]; then
            cp "$FILE_TO_COPY" "$N/$M"
        else
            touch "$N/$M"
        fi
        ((M++))
    done
    ((N++))
done