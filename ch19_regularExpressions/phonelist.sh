#!/usr/bin/env bash

for i in {1..10}; do
  echo "(${RANDOM:0:3}) ${RANDOM:0:3}-${RANDOM:0:4}" >> phonelist.txt;
done

grep -Ev '^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$' phonelist.txt # {3} means match 3 times
