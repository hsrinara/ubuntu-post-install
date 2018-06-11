#!/bin/bash

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
gsettings set org.gnome.desktop.wm.keybindings begin-move "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'[]'"

sudo apt -y install vim
sudo apt -y install firefox
sudo apt -y install gedit
sudo apt -y install gradle
sudo apt -y install maven
sudo apt -y install keepassx
sudo apt -y install python 
sudo apt -y install pip
sudo apt -y install terminator
sudo apt -y install vlc
sudo apt -y install atom
sudo apt -y install eclipse
sudo apt -y install git
sudo apt -y install libgnome2-bin

sudo apt -y install cargo
sudo apt -y install rustc
#apm install language-rust

cp .gitconfig ~/
mkdir -p ~/code
mkdir -p ~/applications/scripts
echo "export PATH=$PATH:~/applications/scripts" >> ~/.bash_profile
echo "pulseaudio -k && sudo alsa force-reload" >> ~/applications/scripts/restart_sound.sh
chmod u+x ~/applications/scripts/restart_sound.sh

mkdir -p ~/.config/terminator
cp ./terminator-config ~/.config/terminator

echo "export PS1='\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ '" >> ~/.bash_profile

# has dialog prompt :'(
sudo apt -y install wireshark 

