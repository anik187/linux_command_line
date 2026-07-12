#!/usr/bin/env bash

first_program (){

  local count=1

  while (( count <= 5 )); do 
    echo "$count"
    count=$((count + 1))
  done
  echo "Finished"
}

second_program () {
  local delay=3
  while true; do
    clear
    cat <<- EOF
      Please Select:

      1. Display System Information
      2. Display Disk Space
      3. Display Home Space Utilization
      0. Quit
EOF
  read -p "Enter selection [0-3] > "

  if [[ "$REPLY" =~ ^[0-3]$ ]]; then
    if [[ "$REPLY" == 1 ]]; then
      echo "Hostname: $HOSTNAME"
      uptime
      sleep $delay
      continue
    fi

    if [[ "$REPLY" == 2 ]]; then
      df -h
      sleep $delay
      continue 
    fi

    if [[ "$REPLY" == 3 ]]; then
      if [[ "$(id -u)" -eq 0 ]]; then
        echo "Home Space Utilization (All Users)"
        du -sh /home/*
      else
        echo "Home Space Utilization ($USER)"
        du -sh "$HOME"
      fi
      sleep  $delay
      continue 
    fi

    if [[ "$REPLY" == 0 ]]; then
      break 
    fi
  else
    echo "invalid entry"
    sleep $delay
  fi
done
echo "program terminated"
}

first_program 
second_program
