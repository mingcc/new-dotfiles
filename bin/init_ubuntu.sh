#!/usr/bin/env bash

sed -i 's/enabled=1/enabled=0/g' /etc/default/apport

if [ ! -e ~/.oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    chsh -s /bin/zsh
fi

apt-get install tmux vim autojump curl ibus-mozc python-pip
