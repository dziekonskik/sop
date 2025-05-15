#!/bin/bash

if [ -w "$0" ]; then
    chmod -w "$0"; else
    chmod +w "$0";
fi 

if [ -r "$0" ]; 
then chmod -r "$0";
else chmor +r "$0";
fi
