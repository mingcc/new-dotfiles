#!/usr/bin/env bash

sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash
