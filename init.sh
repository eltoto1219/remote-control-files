#!/bin/bash

#make sure that this python3 module is available
#pip install --user --upgrade pynvim

#download node js for the thing
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'  >> $HOME/.bachrc # This loads nvm
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> $HOME/.bashrc  # This loads nvm bash_completion

#now isntall node
source ~/.bashrc
nvm use --delete-prefix v12.18.3
npm config set prefix $NVM_DIR/versions/node/v12.18.3

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
vim +'CocInstall --sync coc-css' +qa
vim +'CocInstall --sync coc-json' +qa
vim +'CocInstall --sync coc-yaml' +qa


#make sure pyvim is installed (we want those juicy python3 features)
cp $HOME/remote-control-files/setup.cfg $HOME/setup.cfg
cp $HOME/remote-control-files/coc-settings.json $HOME/.vim/coc-settings.json
