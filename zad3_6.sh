#!/bin/bash

if [ ! -d "$1" ]; then
  echo "Not a directory"
  exit 1
fi

fileCount=0

for arg in "$@"; do
  for file in $(ls "$1"); do
    if [[ ! -f "$file" ]]; then
      continue
    fi
    if [[ "$file" == *.$arg ]]; then
      ((fileCount++))
    fi
  done
done

echo "$fileCount"