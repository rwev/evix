#!/usr/bin/env bash

# general packages
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install \
        cmake \
        python-dev \
        xclip \
        silversearcher-ag \
        vim \
        tmux \
        zsh \
        htop \
        mutt \
        lynx \
        newsbeuter \
        timewarrior \
        taskwarrior \
        calcurse \ # remind
tmuxinator

# mail
GO111MODULE=on go get github.com/emersion/hydroxide/cmd/hydroxide

# formatters
sudo python3.6 -m pip install black
sudo npm install -g remark-cli js-beautify
go get -u mvdan.cc/sh/cmd/shfmt

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl -fLo ~/.zfunctions/async --create-dirs
https://raw.githubusercontent.com/sindresorhus/pure/master/async.zsh
curl -fLo ~/.zfunctions/prompt_pure_setup --create-dirs
https://raw.githubusercontent.com/sindresorhus/pure/master/pure.zsh

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# vim
git config --global github.user rwev
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/colors/nord.vim --create-dirs https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/colors/nord.vim

# patch fonts
curl -fLo ./Source\ Code\ Pro\ Medium\ for\ Powerline.otf --create-dirs
https://github.com/powerline/fonts/blob/master/SourceCodePro/Source%20Code%20Pro%20Medium%20for%20Powerline.otf
mv ./Source\ Code\ Pro\ Medium\ for\ Powerline.otf ~/.local/share/fonts/type1
sudo fc-cache -fv # fc-list | grep "Source Code Pro" to confirm

# pantheon terminal
gsettings set org.pantheon.terminal.settings font 'Source Code Pro for Powerline Regular 16'
gsettings set org.pantheon.terminal.settings foreground '#D8DEE9'
gsettings set org.pantheon.terminal.settings background '#2E3440'
gsettings set org.pantheon.terminal.settings palette '#3B4252:#BF616A:#A3BE8C:#EBCB8B:#81A1C1:#B48EAD:#88C0D0:#E5E9F0:#4C566A:#BF616A:#A3BE8C:#EBCB8B:#81A1C1:#B48EAD:#8FBCBB:#ECEFF4'
gsettings set org.pantheon.terminal.settings tab-bar-behavior 'Never Show Tabs'
gsettings set org.pantheon.terminal.settings remember-tabs false
gsettings set org.pantheon.terminal.settings save-exited-tabs false
gsettings set org.pantheon.terminal.settings alt-changes-tab false
gsettings set org.pantheon.terminal.settings follow-last-tab false

# X*
curl -fLo ./nord-xresources --create-dirs https://raw.githubusercontent.com/arcticicestudio/nord-xresources/develop/src/nord
xrdb -merge ./nord-xresources
