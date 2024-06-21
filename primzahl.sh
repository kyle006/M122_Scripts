#!/bin/bash

# Function to check if a number is prime or not
isPrime() {
    local number=$1

    # Check if the number is not positive
    if [[ $number -le 0 ]]; then
        echo "Error: Please provide a positive integer." >&2
        return 1
    fi

    # 1 is not prime
    if [[ $number -eq 1 ]]; then
        echo "$number is not a prime number."
        return 0
    fi

    # Check for divisors
    for ((i = 2; i < $number; i++)); do
        if ((number % i == 0)); then
            echo "$number is not a prime number."
            return 0
        fi
    done

    # If no divisors found, the number is prime
    echo "$number is a prime number."
    return 0
}

# Check if a number is provided as an argument
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Call the isPrime function with the provided number
isPrime "$1"
