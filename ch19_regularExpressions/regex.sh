#!/usr/bin/env bash

grep -h '.zip' dirlist*.txt # . means any character

echo 
echo 

grep -h '^zip' dirlist*.txt # ^ means starts with zip

echo 
echo 

grep -h 'zip$' dirlist*.txt  # $ means ends with zip

echo 
echo

grep -h '^[A-Z]' dirlist*.txt # means starts with A-Z

echo
echo

grep -h '[^A-Z]' dirlist*.txt # means does not start with A-Z

echo 
echo

echo "AAA" | grep -E 'AAA|BBB' # -E means extended regex for grep | for alternation

echo 
echo

echo "This that" | grep -E '^([A-Za-z]+ ?)+$'  # + for one or more times, ? for zero or one time
