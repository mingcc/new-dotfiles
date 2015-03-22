#!/bin/sh
# Description: changes the filename such as,  27079_08_.sh to  instruder.sh.


for file in $1; do
    Filename=`cat $file | egrep '(^#Filename|^#Name)' | sed 's/\(#Filename:\|#Name:\)//g'`
    mv $1 $Filename
done

