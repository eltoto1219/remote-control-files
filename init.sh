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
vim + "PlugClean" +qa
#vim +'CocInstall coc-json coc-tsserver coc-yaml coc-python coc-css coc-yaml coc-snippets' +qa
#cp coc-settings.json $HOME/.vim/coc-settings.json

# stuff to add to .profile

# echo "" >> ~/.bash_profile
# echo "#==== AUTO ADDED ===" >> ~/.bash_profile
# echo "" >> ~/.bash_profile
# cat .profile >> ~/.bash_profile
# cat .profile >> ~/.bashrc

# move tmux config

cp .tmux.conf ~/
cp setup.cfg ~/
cp .hushlogin ~/

# add to path
echo "PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc

# install all neccessary python packages
pip3 install -r requirements.in

# install homebrew for gh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# add homebrew to path
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/antoniomendoza/.profile
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# install gh
brew install gh
# login with gh
gh auth login
