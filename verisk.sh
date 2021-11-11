#!/bin/bash

sudo chown -R ubuntu /opt
mkdir /opt/cache
cd /opt/ && git clone https://dev.jde.cloud.verisk.com/Antonio.Mendoza/kvp-copynet.git
source activate pytorch_latest_p37
pip install --upgrade pip
pip install strsim
pip install transformers
pip install wandb
pip install datasets
pip install jsonlines
pip install nltk
pip install numpy

cd ~/remote-control-files

echo "source activate pytorch_latest_p37" >> ~/.profile
echo "cd /opt/kvp-copynet" >> ~/.profile
echo "set -o vi" >> ~/.bashrc
echo "PYTHONDONTWRITEBYTECODE=1" >> ~/.bashrc
echo "export PYTHONDONTWRITEBYTECODE=1" >> ~/.bashrc
echo "force_color_prompt=yes" >> ~/.bashrc
echo "export WANDB_CACHE_DIR="/opt/cache"" >> ~/.bashrc
