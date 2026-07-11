#!/usr/bin/env bash

# reading input from standard input

main (){
  echo -n "please enter an integer -> " # -n option removes newline from output
  read INT

  if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
    if [[ "$INT" -eq 0 ]]; then
      echo "$INT is zero"
    elif (( INT > 0 )); then
      echo "$INT is positive" 
    else
      echo "$INT is negative"
    fi
  fi
}

multiple (){
  echo -n "Enter one or more values "
  read var1 var2 var3
  echo "yours given inputs are $var1 $var2  $var3"
}

default (){
  # if no variable assigned to read it will store input to the default variable called REPLY
  read -e -p "what is your user name? " -i $USER  # -i option gives a default input value here is the $USER 
  echo "You answered: $REPLY"
}

main
multiple
default
