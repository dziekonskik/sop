#!/bin/bash
folder=.

for file in $(ls $folder); do
  if [[ ! -x "$file" ]]; then 
    echo This is not a script
    continue
  fi

  lines=$(wc -l < "$file")
  mid=$(( (lines + 1) / 2 ))
  middle_line=$(head -n "$mid" "$file" | tail -n 1)
  echo "$middle_line"
done

