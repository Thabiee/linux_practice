#!/bin/bash

# Check if an argument is given
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path>"
    exit 1
fi

# Assign the input path to a variable
input_path=$1

# Check if the path exists
if [ ! -d "$input_path" ]; then
    echo "The path $input_path does not exist."
    exit 1
fi

# Count the number of directories
dir_count=$(find "$input_path" -mindepth 1 -maxdepth 1 -type d | wc -l)

# Count the number of files
file_count=$(find "$input_path" -mindepth 1 -maxdepth 1 -type f | wc -l)

# Output the counts
echo "Directories: $dir_count"
echo "Files: $file_count"

