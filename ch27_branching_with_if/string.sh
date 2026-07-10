#!/usr/bin/env bash

main (){
  INT=5
  if [[  -n "$INT" ]]; then  # checks if length of string is greater than zero
    if [[ "$INT" =~ ^-?[0-9]+$  ]]; then
      printf "string parsing with regex\n"
    fi
    printf "$INT is safe to parse\n"
  elif [[ -z "$INT" ]]; then  # checks if length of string is zero
    printf "$INT is not safe to parse\n"
  else
    echo -n "hello hello"
  fi
}

main 
