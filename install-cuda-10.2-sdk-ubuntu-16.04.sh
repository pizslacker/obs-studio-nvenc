#!/usr/bin/bash
# Script to install Nvidia CUDA v10.2 SDK + cuda-driver (440.xx.xxx) on Ubuntu 16.04
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-ubuntu1604.pin ~/Downloads/
sudo mv ~/Downloads/cuda-ubuntu1604.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/ /"
sudo apt-get update
sudo apt-get -y install cuda
sudo apt-mark hold cuda*
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/nvidia-settings_440.33.01-0ubuntu1_amd64.deb ~/Downloads/
sudo dpkg -i ~/Downloads/nvidia-settings_440.33.01-0ubuntu1_amd64.deb
sudo apt-mark hold nvidia-settings
