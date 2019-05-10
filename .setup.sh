sudo apt-get update && sudo apt-get upgrade
sudo apt-get install cmake
sudo apt-get install python-dev 
sudo apt-get install build-essentials
sudo apt-get install xclip
sudo apt-get install silversearcher-ag
sudo apt-get install vim
sudo apt-get install tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vim/colors/badwolf.vim --create-dirs https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim
