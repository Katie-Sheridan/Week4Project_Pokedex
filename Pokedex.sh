#!/bin/bash
echo "Enter the username of the new user"
read username
# check if the username already exists
if id "$username" >/dev/null 2>&1;then
	echo 'user already exists'
	exit 1 
fi
echo "Adding username to the system"
# create the user account
useradd -m $username
# set the password for the new user
echo "Enter a new password for the new user:"
passwd $uesrname
echo "user $username has been added successfully."
echo "I want to be the very best, like no one ever was..."
