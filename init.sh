#!/bin/bash

#make sure that this python3 module is available
#pip install --user --upgrade pynvim

#download node js for the thing
if [ ! -d ~/local ]; then
	mkdir ~/local
fi
if [ ! -d ~/node-latest-install ]; then
	mkdir ~/node-latest-install
fi

echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
cd ~/node-latest-install


# curl -sL install-node.now.sh/lts | bash
curl -L https://nodejs.org/download/release/latest/node-v14.8.0.tar.gz | tar xz --strip-components=1
./configure --prefix=$HOME/local
make install
curl -L https://www.npmjs.com/install.sh | sh


#set vimrc path an for neovim
mkdir -p $HOME/.config/nvim; printf "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath = &runtimepath\nsource ~/.vimrc" > $HOME/.config/nvim/init.vim

#get plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#add changes to bash
echo "if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi" >> $HOME/.bashrc
echo "set -o vi" >> $HOME/.bashrc

#Run Plug Install
vim +'PlugInstall --sync' +qa
vim +'PlugUpdate --sync' +qa
vim +'CocInstall --sync coc-tsserver' +qa
vim +'CocInstall --sync coc-python' +qa
vim +'CocInstall --sync coc-snippets' +qa
vim +'CocInstall --sync coc-css' +qa
vim +'CocInstall --sync coc-json' +qa
vim +'CocInstall --sync coc-yaml' +qa


#make sure pyvim is installed (we want those juicy python3 features)
cp $HOME/remote-control-files/setup.cfg $HOME/setup.cfg
cp $HOME/remote-control-files/coc-settings.json $HOME/.vim/coc-settings.json
