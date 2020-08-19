#!/bin/bash

#make sure that this python3 module is available
pip3 install --user --upgrade pynvim

#set vimrc path an for neovim
mkdir -p $HOME/.config/nvim; printf "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath = &runtimepath\nsource ~/.vimrc" > $HOME/.config/nvim/init.vim

#get plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#add changes to bash
echo "if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi" >> $HOME/.bashrc
echo "set -o vi" >> $HOME/.bashrc

#make sure pyvim is installed (we want those juicy python3 features)
pip3 install --user --upgrade pynvim
cp ./.vimrc $HOME/.vimrc
cp ./setup.cfg $HOME/.vimrc
cp ./coc-settings.json $HOME/.vim/coc-settings.json

#Run Plug Install
vim -c 'PlugInstall!'
vim -c 'PlugUpdate!'
vim -c 'CocInstall -sync coc-json coc-css coc-html coc-tsserver coc-python coc-yaml coc-snippets|q'


#auto add aws credentials
#cant figure out
