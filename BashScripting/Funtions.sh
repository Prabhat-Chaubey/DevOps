#!/bin/bash

# Define a function
greet() {
    echo "Hello, $1!"  # $1 refers to the first argument passed to the function
}

# Call the function
echo "Enter your name:"
read NAME
greet $NAME
