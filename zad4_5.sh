#!/bin/bash

number="$1"

if [[ "$number" -lt 0 ]]; then
  echo "$number" jest mniejsza od 0
  exit 1
fi

result=1

for ((i=1; i<=number; i++)); do
  let result*=i
done

echo Silnia z "$number" to "$result"