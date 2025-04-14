#!/bin/bash


echo "--- Files in Current Directory ---"

# Using output of 'ls' command for the loop list
for item in $(ls); do
	echo "Found: $item"
done

echo "--- Loop Finished ---"

# The $item variable holds each file or directory name returned by 'ls'
# It is updated each time the loop runs
