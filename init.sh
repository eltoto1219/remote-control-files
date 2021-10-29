#!/bin/bash

#download node js for the thing
#source $HOME/.bashrc
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
#. ~/.nvm/nvm.sh
#nvm install node
#node -e "console.log('Running Node.js ' + process.version)"

cp .vimrc ~/.vimrc
# get plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Run Plug Install
vim +'PlugInstall' +qa
vim +'PlugUpdate' +qa

vim +'CocInstall coc-json coc-tsserver coc-yaml coc-python coc-css coc-yaml coc-snippets' +qa

cp setup.cfg $HOME/setup.cfg
cp coc-settings.json $HOME/.vim/coc-settings.json
#cp .bashrc $HOME/.bashrc
#cp .bash_profile $HOME/.bash_profile
