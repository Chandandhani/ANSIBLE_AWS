#!/bin/bash
#echo -e "Enter the file name: \c"
v_file="/etc/passwd"
#echo -e "Enter the delimeter \c"
delimeter=":"
IFS=$delimeter
while read -r USER PASSWORD USERID GID COMNT HOMEDIR LOGINSHELL
do
  if [ $LOGINSHELL == "/sbin/nologin" ]; then
    echo "$USER" >> /home/ansible/output.txt
  fi
done < "$v_file"


    
