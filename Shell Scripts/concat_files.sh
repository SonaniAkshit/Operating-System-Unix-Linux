#!/bin/bash

# Check if at least one file is provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <output_file> <input_file1> <input_file2> ..."
    exit 1
fi

output_file="$1"
shift  # Shift to remove output_file from arguments

# Clear output file before writing
> "$output_file"

# Loop through each input file
for file in "$@"; do
    if [ -f "$file" ]; then
        echo "*** filename : $file ***" >> "$output_file"
        cat "$file" >> "$output_file"
        echo "" >> "$output_file"  # Add a newline for separation
    else
        echo "Warning: '$file' is not a valid file. Skipping..."
    fi
done

echo "Concatenation completed. Output saved to '$output_file'."

