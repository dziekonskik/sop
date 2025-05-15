#!/bin/bash

./zad3_1.sh /users/seven

filesCount=0
if [ $? -eq 0 ] ; then 
    for file in $(ls); do
        if [[ "$file" == *.txt ]]; then
             ((filesCount++))
        fi
    done
fi

echo $filesCount