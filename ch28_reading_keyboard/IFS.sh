#!/usr/bin/env bash

# read-ifs: read fields from a file
# IFS stands for Internal File Separator

# by default IFS is space so read separates inputs using space

FILE=/etc/passwd

read -p "Enter a username > " user_name

file_info=$(grep "^$user_name:" $FILE)

if [[ -n "$file_info" ]]; then
  IFS=":" read user pw uid gid name home shell <<< "$file_info" # here before calling the read command we have changed the IFS value to : 
  echo "User      =   $user" # this change is not permanent
  echo "UID       =   $uid"
  echo "GID       =   $gid"
  echo "Full Name =   $name"
  echo "Home Dir. =   $home"
  echo "Shell     =   $shell"
else
  echo "No such user $user_name" >&2
fi

# <<< sign is a here string. Read does not take input from pipe | operator
