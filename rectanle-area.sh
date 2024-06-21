#!/bin/bash

calculate_area() {
    # calculate the area of a rectangle
    # arguments: length 
    # arguments: width

    local lenght=$1
    local width=$2

    local area=$((length * width))
    echo "Area of the rectangle is: $area"
    return 0
}

echo "Enter the length of the rectangle:"
read length

echo "Enter the width of the rectangle:"
read width

area=$(calculate_area $length $width)

echo "Area of the rectangle is: $area"
