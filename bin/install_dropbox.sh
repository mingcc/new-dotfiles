#!/bin/sh

cd /tmp 
wget -O dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
sudo dpkg -i dropbox.deb
