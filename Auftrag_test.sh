#!/bin/bash

# Print first 3 arguments in reverse order
echo "${3} ${2} ${1}"
#echo "$3 $2 $1"

#
#Check if argument is -h and print help
#

#long version
test "${1}" = "-h" -o "${2}" = "-h" -o "${3}" = "-h" && echo "Usage: $0 arg1 arg2 arg3" && exit 0