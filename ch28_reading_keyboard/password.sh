#!/usr/bin/env bash

# read secret passphrase from user

if read -t 15 -sp "Enter secret passphrase > " secret_pass; then # -t is used for timeout limit -s is for invisible input -p is for prompt
  echo -e "\nSecret passphrase = $secret_pass"
else
  echo -e "\nInput timed out" >&2 # throwing the output to std err
  exit 1
fi
