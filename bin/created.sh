#!/bin/sh



awk 'BEGIN { print "~~~~~Users~~~~~~"} 
    {FS=":"}  $3 >= 1000 { printf"username: %10s\tuid:%10s\n",$1,$3 }' /etc/passwd
        

awk 'BEGIN { print "~~~~~Groups~~~~~~"} 
    {FS=":"}  $3 >= 1000 { printf"username: %10s\tgid:%10s\n",$1,$3 }' /etc/group
