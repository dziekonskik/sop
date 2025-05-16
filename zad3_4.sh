#!/bin/bash

folder="$1"
# counter=0
# for folder in $(find "$folder" -type d); do
#     ((counter++))
# done
# echo $counter

find "$folder" -type d | wc -l