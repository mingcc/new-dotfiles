#!/usr/bin/env bash

sed -i 's/enabled=1/enabled=0/g' /etc/default/apport

if [ ! -e ~/.oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    chsh -s /bin/zsh
fi

apt-get install tmux vim autojump curl ibus-mozc python-pip ack-grep

pip install jedi virtualenvwrapper

git clone https://github.com/junegunn/fzf ~/.fzf
https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb


if [ -e /usr/bin/ack-grep ]; then
    echo "ack-grep is exists"
    ln -s /usr/bin/ack-grep /usr/local/bin/ack
    echo "created a symlink to /usr/local/bin/ack"
fi
