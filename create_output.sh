#!/bin/bash

# Get the current date and time
current_date=$(date)

# Get the current working directory
current_dir=$(pwd)

# Write the output to the file in /tmp directory
echo "$current_date $current_dir" > /tmp/first_bash_output

