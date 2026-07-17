#!/usr/bin/env bash

first_program (){
  read -n 1 -r -p "Type a character > "
  echo 
## the ;;& sign doesnot stop after finding one match. rather it goes for another test
  case "$REPLY" in
    [A-Z])       echo "$REPLY is upper case" 
                 ;;&
    [a-z])       echo "$REPLY is lower case"
                 ;;&
    [[:alpha:]]) echo "$REPLY is alphabetic"
                 ;;&
        *)       echo "$REPLY is outside of the range"
                 ;;&
  esac
}

second_program (){
  echo "
    Please Select:

    1. Display System Information
    2. Display Disk Usage
    3. Display Memory Usage
    0. Quit
  "
  read -p "Enter selection [0-3] > "

  case "$REPLY" in
    0)  echo "Program terminated"
        exit
        ;;
    1)  echo "Hostname: $HOSTNAME"
        uptime
        ;;
    2)  df -h
        ;;
    3)  free -h
        ;;
    *)  echo "Invalid entry" >&2
        exit 1
        ;;
  esac
}

first_program 
second_program
