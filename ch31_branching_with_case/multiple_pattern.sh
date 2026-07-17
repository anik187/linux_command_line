#!/usr/bin/env bash

first_program (){
    echo "
      Please Select:
      A. Display System Information
      B. Display Disk Space
      C. Display Memory Usage
      Q. Quit
    "
    read -p "Enter selection > "
    case "$REPLY" in
      q|Q) echo "Program terminated."
           exit
           ;;
      a|A) echo "Hostname: $HOSTNAME"
           uptime
           ;;
      b|B) df -h
           ;;
      c|C) free -h
           ;;
        *) echo "Invalid selection"
           exit 1
           ;;
    esac
}

second_program (){
  read -p "enter word > "
  
  case "$REPLY" in
    [[:alpha]])  echo "$REPLY is a single alphabetic" ;;
    [ABC][0-9])  echo "$REPLY is A, B or C followed by a digit" ;;
           ???)  echo "$REPLY is three characters long." ;;
         *.txt)  echo "$REPLY is a word ending in '.txt'" ;;
             *)  echo "$REPLY is something else." ;;
  esac
}
first_program 
second_program 
