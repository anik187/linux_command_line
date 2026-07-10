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

range (){
  local MIN_VAL=1
  local MAX_VAL=100

  INT=50

  if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
    if [[ $INT -ge $MIN_VAL && $INT -le $MAX_VAL ]]; then
      echo "$INT falls within the range of $MIN_VAL and $MAX_VAL"
    else
      echo "$INT is out of range of $MIN_VAL-$MAX_VAL"
    fi
  fi
}

main
echo
echo
range 
