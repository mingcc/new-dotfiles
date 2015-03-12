#!/bin/sh



awk '{FS=":"}  $3 >= 1000 { print "username: "$1 "\t\t " "uid: "$3 }' /etc/passwd
