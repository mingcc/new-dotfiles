#!/bin/sh
# Description: changes the filename such as,  27079_08_.sh to  instruder.sh.

Filename=`cat $1 | grep '^#Filename' | sed 's/#Filename://g'`

mv $1 $Filename
