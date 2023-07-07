#!/usr/bin/bash

# this scritp is for Fedora

wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/plank/0.11.89-1/plank_0.11.89.orig.tar.xz
tar -xf plank_0.11.89.orig.tar.xz
cd plank-0.11.89/
sudo yum install -y libglib2.0-dev valac libgnome-menu-3-dev libxml2-utils libgtk-3-dev libgee-0.8-dev libbamf3-dev libwnck-3-dev
./configure
make
sudo make install
sudo dnf reinstall plank libplank*
killall plank
