#!/usr/bin/env bash

# general packages
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install cmake \
        python-dev \
        xclip \
        silversearcher-ag \
        vim \
        tmux \
        zsh \

        # zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
gsettings set org.pantheon.terminal.settings font 'Source Code Pro for Powerline
Medium 14'
sudo fc-cache -fv # fc-list | grep "Source Code Pro" to confirm

# X*
curl -fLo ./nord-xresources --create-dirs https://raw.githubusercontent.com/arcticicestudio/nord-xresources/develop/src/nord
xrdb -merge ./nord-xresources
