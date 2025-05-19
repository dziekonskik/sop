!#/bin/bash

for dir in $(ls /); do
  if [[ "$dir" == b* || "$dir" == c* || "$dir" == e* ]]; then
    echo "$dir" >> dirs3_5.txt
  fi
done