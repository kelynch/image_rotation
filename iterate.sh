#!/bin/bash

MANIFEST=$1

if [ -z "$MANIFEST" ]
then
      echo "Supply a manifest filename"
else
  for i in $(cat $MANIFEST); do
      command="$(./orient_image.sh "$i")"
      echo "working on $i"
      ./orient_image.sh "$i"
      echo "done on $i"
  done
fi
