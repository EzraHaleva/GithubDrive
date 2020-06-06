#!/usr/bin/env bash
sudo apt-get install vifm tmux vim
cp -r ~/GithubDrive/linuxconfig/bootstrapping/homeconfigfiles/. ~/
cp -r ~/GithubDrive/linuxconfig/bootstrapping/dotconfigfiles/. ~/.config/
source ~/.profile
source ~/.bashrc

