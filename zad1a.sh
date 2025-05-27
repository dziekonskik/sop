#!/bin/bash

for folder in "$@"; do
  if [[ ! -d "$folder" ]]; then
    echo "$folder" is not a directory
    continue
  fi
  for file in $(ls "$folder"); do
    if [[ "$file" == *.sh ]]; then
      echo $(head -n 1 "$file") $(head -n 1 "$file" | wc -c -w)
    fi
    if [[ "$file" == *.log ]]; then
      echo $(tail -n 1 "$file") $(head -n 1 "$file" | wc -c -w)
    fi
  done
done