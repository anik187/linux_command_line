#!/usr/bin/env bash

main (){
  INT=50

  if [[ "$INT" -lt 0 ]]; then
    echo "$INT is negative"
  elif [[ "$INT" -ge 0 ]]; then
    if [[ "$INT" -eq 0 ]]; then
      echo "$INT is zero"
    else
      echo "$INT is positive"
      if  (( ((INT % 2)) == 0 )) ; then # double bracket for integer calculations
        echo "$INT is even"
      else
        echo "$INT is odd"
      fi
    fi
  fi
}

main
