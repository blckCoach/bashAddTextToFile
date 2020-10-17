#!/bin/bash
FILE=visitorsAmongThePeople
if test -f "$FILE"; then
        rm $FILE 
fi

FILE=staffAmongThePeople
if test -f "$FILE"; then
        rm $FILE 
fi

username="personsPresent"

while IFS=, read username1 group1; do
    if [ $group1 = "visitor" ]; then
    echo $username1 >> visitorsAmongThePeople
    fi
    if [ $group1 = "staff" ]; then
    echo $username1 >> staffAmongThePeople
    fi

done < $username
