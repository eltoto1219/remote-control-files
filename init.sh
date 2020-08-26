#!/bin/bash

#download node js for the thing
curl -sL install-node.now.sh | bash
source $HOME/.bashrc

#get plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#add changes to bash
echo "if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi" >> $HOME/.bashrc
echo "set -o vi" >> $HOME/.bashrc

#Run Plug Install
vim +'PlugInstall' +qa
vim +'PlugUpdate' +qa
source ~/.bashrc

vim +'CocInstall coc-json coc-tsserver coc-yaml coc-python coc-css coc-yaml coc-snippets' +qa

#make sure pyvim is installed (we want those juicy python3 features)
cp $HOME/remote-control-files/setup.cfg $HOME/setup.cfg
cp $HOME/remote-control-files/coc-settings.json $HOME/.vim/coc-settings.json
