# OBS-Studio-NVENC
Scripts to compile FFmpeg + OBS-Studio with NVENC encoding/decoding capability.

- Use an Nvidia GPU to hardware-stream with OBS-Studio (using Nvidia NVENC chip)
- Use OBS-Studio to record screencasts (using Nvidia NVENC chip)
- Use FFmpeg to transcode video-files (encode from one format to another, using Nvidia NVENC chip)

## Requirements

### Installing Nvidia CUDA 10.2 on Ubuntu 16.04
```
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-ubuntu1604.pin
sudo mv cuda-ubuntu1604.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda-repo-ubuntu1604-10-2-local-10.2.89-440.33.01_1.0-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604-10-2-local-10.2.89-440.33.01_1.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-10-2-local-10.2.89-440.33.01/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
```
### Fix nvidia-settings bug with nvidia-440 on Ubuntu 16.04
```
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/nvidia-settings_440.33.01-0ubuntu1_amd64.deb
sudo dpkg -i nvidia-settings_440.33.01-0ubuntu1_amd64.deb
sudo apt-mark hold nvidia-settings
```
