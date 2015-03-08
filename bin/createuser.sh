#!/bin/sh

GROUPS=sudo,lpadmin
echo $GROUPS

echo "username: "
read USER

adduser -G $GROUPS $USER 
grep $USER /etc/passwd /etc/group
