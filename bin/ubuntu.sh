#!/usr/bin/env bash

sudo sysctl vm.swappiness=10
#apt-get update && sudo apt-get upgrade
#disable online search in Dash
gsettings set com.canonical.Unity.Lenses remote-content-search ‘none’ 
sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
# sed -i '13a $HOME/bin/test' /etc/rc.local

#gsettings set "org.gnome.gnome-screenshot" "auto-save-directory" "~/Dropbox/"
#gsettings set org.gnome.desktop.default-applications.terminal exec 'gnome-terminal'

services
========
#update-rc.d bluetooth stop

if [ ! -e ~/.oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

sudo apt-get install python-pip zsh tmux vim autojump #ibus-mozc ibus-sunpinyin

sudo pip install jedi virtualenvwrapper beautifulsoup4

#git clone https://github.com/junegunn/fzf ~/.fzf

#install_dropbox() {
    
#    wget -O dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
#}


if [ -e /usr/bin/ack-grep ]; then
    echo "ack-grep is exists"
    ln -s /usr/bin/ack-grep /usr/local/bin/ack
    echo "created a symlink to /usr/local/bin/ack"
fi
