#!/bin/bash

all="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&(){}<>?"
password=""
found=false
findme="asd123s!!!asdas!dsdfdfgasdfg"

echo $findme

while [[ "$found" == false ]]; do
    for character in $(echo "$all" | grep -o .); do
        tmp="${password}${character}*"

        if [[ $findme == $tmp ]]; then
            password="${password}${character}"
            echo "$password"
            if [[ $findme == $password ]]; then
                found=true
                echo "Found password:" $password
                break
            fi
        fi
    done
done
