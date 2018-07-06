#!/bin/bash

# intellij conflicts
#ctrl+alt+left
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
#ctrl+alt+right
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"
#ctrl+alt+up
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
#ctrl+alt+down
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
#alt+f7
gsettings set org.gnome.desktop.wm.keybindings begin-move "['']"
#ctrl+shift+t
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"

# mouse focus
gsettings set org.gnome.desktop.wm.preferences auto-raise-delay 10
gsettings set org.gnome.desktop.wm.preferences auto-raise true

alias sl=ls
alias cd..="cd .."

sudo apt -y install curl
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
sudo apt -y install python-pip
# windows rdp client
sudo apt-get install remmina

sudo apt -y install cargo
sudo apt -y install rustc
#apm install language-rust

cp .gitconfig ~/
mkdir -p ~/code
mkdir -p ~/applications/scripts
cp ./jpid ~/applications/scripts/jpid

echo "export PATH=$PATH:~/applications/scripts" >> ~/.bash_profile

rm -rf ~/applications/scripts/restart_sound.sh
echo "pulseaudio -k && sudo alsa force-reload" >> ~/applications/scripts/restart_sound.sh
chmod u+x ~/applications/scripts/restart_sound.sh

mkdir -p ~/.config/terminator
cp ./terminator-config ~/.config/terminator

#echo "export PS1='\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ '" >> ~/.bash_profile
#TODO should echo into bash_profile
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Convert gits t into git status
function gits() {
  case $* in 
    t ) command git status; ;; 
    * ) command echo "Did you mean git status?"; ;; 
  esac
}

# Converts gti into git
function gti() {
  case $* in  
    * ) command git "$@"; ;;
  esac
}

# cd ..
function c() {
  case $* in
    d.. ) command cd ..; ;;
    *   ) command "Unknown command"; ;;
  esac
}


export PS1="\w:\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "



# has dialog prompt :'(
sudo apt -y install wireshark 

