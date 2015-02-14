#!/usr/bin/env bash

sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport

if [ ! -e ~/.oh-my-zsh ]; then

fi
