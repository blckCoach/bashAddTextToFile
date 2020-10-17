#!/bin/bash

username="username2.txt"

while IFS=, read username1 group1; do
    if [ $group1 = "visitor" ]; then
    echo $username1 >> reportvisitors.txt
    fi
done < $username
