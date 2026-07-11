#!/usr/bin/env bash

invalid_input (){
  echo "Invalid input $REPLY" >&2
  exit 1
}

read -p "Enter a single item > "

# check if input is empty
[[ -z "$REPLY" ]] && invalid_input

# check if input is multiple items (invalid)
(( "$(echo "$REPLY" | wc -w)" > 1 )) && invalid_input

# check if input is valid filename

if [[ "$REPLY" =~ ^[-[:alnum:]\._]+$ ]]; then
  echo "$REPLY is a valid filename"
  if [[ -e "$REPLY" ]]; then
    echo  "file $REPLY exists."
  else
    echo "However, file $REPLY doesn't exist"
  fi

  # check if input is floating point number
  if [[ "$REPLY" =~ ^-?[0-9]*\.[0-9]+$ ]]; then
    echo "$REPLY is floating point number" 
  else
    echo "$REPLY is not a floating point number" 
  fi

  # check if input is integer
  if [[ "$REPLY" =~ ^-?[0-9]+$ ]]; then
    echo "$REPLY is an integer."
  else
    echo "$REPLY is not an integer"
  fi
else
  echo "The string $REPLY is not a valid filename."
fi
