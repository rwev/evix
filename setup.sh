#!/usr/bin/env bash
sudo apt-get install zsh tmux vim mutt lynx newsbeuter weechat
sudo python3.6 -m pip install jrnl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo python3.6 -m pip install black
sudo npm install -g remark-cli js-beautify eslint
go get -u mvdan.cc/sh/cmd/shfmt
cargo install rustfmt
GO111MODULE=on go get github.com/emersion/hydroxide/cmd/hydroxide
sudo apt-get install qalc
sudo npm install -g tldr
sudo apt-get install pandoc jq shyaml csvkit pv 
sudo python3.6 -m pip install speedtest-cli
sudo apt-get install htop iftop neofetch inxi
sudo apt-get install wget curl
~/.fzf/install
