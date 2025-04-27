#!/bin/bash

counter=1

while [ $counter -le 5 ]
do
    echo "Counter is at $counter"
    ((counter++))  # Increment the counter
done
