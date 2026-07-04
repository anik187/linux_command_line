#!/usr/bin/env bash

echo "hello from $(which bash)"

ls -l /usr/bin > ls-output.txt # redirects std output to the file

ls -l /bin/usr > ls-output.txt # error msg sent to std err and file is rewritten with std ouptut which is null

# instead of >, >> is used for appending
# file descriptor for input, output, error is 0, 1, 2
ls -l /bin/usr 2> err.txt # std err redirected to err.txt
ls -l /bin/usr > ls-err.txt 2>&1 # sending std out and std err to the same file. 1st output then error
ls -l /bin/usr 2> /dev/null # ignoring std err 
cat err.txt ls-err.txt ls-output.txt > new.txt # concatenate files and save to new one

cat < new.txt # use new.txt as input to cat

ls -l /usr/bin | less # std out of 1st command goes to std in of the other

ls -l /usr/bin | sort | uniq -d | wc -l # pipe takes output of 1 command and then use it as input of other command

