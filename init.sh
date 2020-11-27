#!/bin/bash

#download node js for the thing
#curl -sL install-node.now.sh | bash
#source $HOME/.bashrc

#get plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Run Plug Install
vim +'PlugInstall' +qa
vim +'PlugUpdate' +qa
source ~/.bashrc
source ~/.bash_profile

vim +'CocInstall coc-json coc-tsserver coc-yaml coc-python coc-css coc-yaml coc-snippets' +qa

cp setup.cfg $HOME/setup.cfg
cp coc-settings.json $HOME/.vim/coc-settings.json
#cp .bashrc $HOME/.bashrc
#cp .bash_profile $HOME/.bash_profile
