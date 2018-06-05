#!/bin/bash

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"

sudo apt-get -y install vim
sudo apt-get -y install firefox
sudo apt-get -y install gedit
sudo apt-get -y install gradle
sudo apt-get -y install maven
sudo apt-get -y install keepassx
sudo apt-get -y install python 
sudo apt-get -y install pip
sudo apt-get -y install terminator
sudo apt-get -y install vlc
sudo apt-get -y install atom
sudo apt-get -y install eclipse
sudo apt-get -y install git

sudo apt-get -y install cargo
sudo apt-get -y install rustc
#apm install language-rust

cp .gitconfig ~/
mkdir -p ~/code
mkdir -p ~/applications/scripts
echo "export PATH=$PATH:~/applications/scripts" >> ~/.bash_profile
echo "pulseaudio -k && sudo alsa force-reload" >> ~/applications/scripts/restart_sound.sh
chmod u+x ~/applications/scripts/restart_sound.sh

echo "export PS1='\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ '" >> ~/.bash_profile

# has dialog prompt :'(
sudo apt-get -y install wireshark 

