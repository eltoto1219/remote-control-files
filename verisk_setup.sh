#!/bin/bash

# echo "Setting up EC2 Instance"
sudo chown -R ubuntu /opt
mkdir /opt/cache
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

# echo "Removing unsued environments"
rm -rf ~/anaconda3/envs/a*
rm -rf ~/anaconda3/envs/m*
rm -rf ~/anaconda3/envs/t*


