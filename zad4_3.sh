#!/bin/bash

if [[ ! -d "$1" ]]; then
    echo "$1" is Not a directory;
    exit 1
fi

for file in $(ls "$1");do
  full_path="$1/$file"
  if [[ ! -f "$full_path" || "$full_path" != *.java ]]; then
    continue
  fi
  echo "$full_path" ma $(wc -l "$full_path") linii
done

