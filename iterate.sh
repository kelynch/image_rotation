#!/bin/bash 

for i in $(cat manifest); do
    command="$(./orient_image.sh "$i")"
    echo "working on $i"
    ./orient_image.sh "$i"
    echo "done on $i"
done
