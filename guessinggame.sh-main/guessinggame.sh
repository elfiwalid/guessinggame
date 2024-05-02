#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local count=$(ls -l | grep "^-" | wc -l)
    echo "$count"
}

# Main function
main() {
    local actual=$(count_files)
    local guess=-1

    echo "Welcome to the Guessing Game!"
    echo "Guess the number of files in the current directory."

    while [ "$guess" -ne "$actual" ]; do
        read -p "Enter your guess: " guess
        if [ "$guess" -lt "$actual" ]; then
            echo "Too low! Try again."
        elif [ "$guess" -gt "$actual" ]; then
            echo "Too high! Try again."
        fi
    done

    echo "Congratulations! You guessed correctly."
}

# Call the main function
main
