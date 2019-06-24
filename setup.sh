#!/usr/bin/env bash

# prelim
sudo apt-get update && sudo apt-get upgrade
curl https://sh.rustup.rs -sSf | sh

wget -c https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
sudo tar -C /.go -xvzf go1.12.6.linux-amd64.tar.gz

sudo apt-get install python3.6 

# terminal environment
sudo apt-get install zsh tmux vim mutt lynx newsbeuter weechat
sudo python3.6 -m pip install jrnl

## zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fLo ~/.zfunctions/async --create-dirs
https://raw.githubusercontent.com/sindresorhus/pure/master/async.zsh
curl -fLo ~/.zfunctions/prompt_pure_setup --create-dirs
https://raw.githubusercontent.com/sindresorhus/pure/master/pure.zsh

## tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## vim
git config --global github.user rwev
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/colors/nord.vim --create-dirs https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/colors/nord.vim

### auto-formatters
sudo python3.6 -m pip install black
sudo npm install -g remark-cli js-beautify eslint
go get -u mvdan.cc/sh/cmd/shfmt
cargo install rustfmt

## mail
GO111MODULE=on go get github.com/emersion/hydroxide/cmd/hydroxide

# cli utils
sudo apt-get install qalc
sudo npm install -g tldr

git clone https://github.com/jonas/tig.git
cd ./tig && make && makeinstall

# data processing
sudo apt-get install pandoc jq shyaml csvkit pv 

export FD_VER='7.3.0'
export FD_DEB="fd_${FD_VER}_amd64.deb"
wget https://github.com/sharkdp/fd/releases/download/v${FD_VER}/${FD_DEB}
sudo dpkg -i ${FD_DEB}

export BAT_VER='0.11.0'
export BAT_DEB="bat_${BAT_VER}_amd64.deb"
wget https://github.com/sharkdp/bat/releases/download/v${BAT_VER}/${BAT_DEB}
sudo dpkg -i ${BAT_DEB}

export RG_VER='11.0.1'
export RG_DEB="ripgrep_${RG_VER}_amd64.deb"
wget https://github.com/BurntSushi/ripgrep/releases/download/${RG_VER}/${RG_DEB}
sudo dpkg -i ${RG_DEB}

export LSD_VER='0.15.1'
export LSD_DEB="lsd_${LSD_VER}_amd64.deb"
https://github.com/Peltoche/lsd/releases/download/${LSD_VER}/${LSD_DEB}
sudo dpkg -i ${LSD_DEB}

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# system information
sudo python3.6 -m pip install speedtest-cli
sudo apt-get install htop iftop neofetch inxi

# networking
sudo apt-get install wget curl

# cash
sudo apt-get install ledger
git clone https://github.com/andmarti1424/sc-im.git
cd sc-im/src
make && sudo make install
