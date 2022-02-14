#!/bin/bash

echo "Setting up EC2 Instance"
sudo chown -R ubuntu /opt
mkdir /opt/cache
cd /opt/ && git clone https://dev.jde.cloud.verisk.com/Antonio.Mendoza/kvp-copynet.git
cd /opt/ && git clone https://dev.jde.cloud.verisk.com/Antonio.Mendoza/rate-filing-automation.git
source activate pytorch_latest_p37
pip install pip-tools

echo "source activate pytorch_latest_p37" >> ~/.bashrc
echo "set -o vi" >> ~/.bashrc
echo "PYTHONDONTWRITEBYTECODE=1" >> ~/.bashrc
echo "export PYTHONDONTWRITEBYTECODE=1" >> ~/.bashrc
echo "force_color_prompt=yes" >> ~/.bashrc
echo "export WANDB_CACHE_DIR="/opt/cache"" >> ~/.bashrc

echo "source activate pytorch_latest_p37" >> ~/.profile
echo "set -o vi" >> ~/.profile
echo "PYTHONDONTWRITEBYTECODE=1" >> ~/.profile
echo "export PYTHONDONTWRITEBYTECODE=1" >> ~/.profile
echo "force_color_prompt=yes" >> ~/.profile
echo "export WANDB_CACHE_DIR="/opt/cache"" >> ~/.profile

echo "Removing unsued environments"
bash $HOME/remote-control-files/rm_envs.sh

echo "Setting up Vim"
bash $HOME/remote-control-files/init.sh
