# OBS-Studio-NVENC
Scripts to compile **FFmpeg** + **OBS-Studio** with **NVENC** hardware-encoding/decoding capability.

Utilize **Nvidia NVenc** (*Nvidia Encoder/Decoder*) hardware-acceleration, to speed up:

- Streaming screencasts / games with **OBS-Studio** (to YouTube / Twitch)
- Recording screencasts with **OBS-Studio**
- Using **FFmpeg** to transcode video-files (encode from one format to another)

## Requirements

### Dependencies
```
sudo apt-get -y install git autoconf automake build-essential libass-dev \
        libfreetype6-dev libgpac-dev libsdl1.2-dev libtheora-dev libtool libva-dev \
        libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev \
        libqt5x11extras5-dev libxcb-xinerama0-dev libvlc-dev libv4l-dev   \
        pkg-config texi2html zlib1g-dev cmake libcurl4-openssl-dev \
        libjack-jackd2-dev libxcomposite-dev x11proto-composite-dev \
        libx264-dev libgl1-mesa-dev libglu1-mesa-dev libasound2-dev \
        libpulse-dev libx11-dev libxext-dev libxfixes-dev \
        libxi-dev qt5-default qttools5-dev qt5-qmake qtbase5-dev \
        checkinstall libmbedtls-dev libavcodec-dev libavdevice-dev \
        libavfilter-dev libavformat-dev libavutil-dev libfdk-aac-dev \
        libfontconfig-dev libfreetype6-dev libgl1-mesa-dev \
        libjansson-dev libluajit-5.1-dev libqt5x11extras5-dev libspeexdsp-dev \
        libswresample-dev libswscale-dev libudev-dev libv4l-dev libvlc-dev \
        libx11-dev libxcb-shm0-dev libxcb-xinerama0-dev libxcomposite-dev \
        libxinerama-dev pkg-config python3-dev swig libxcb-randr0-dev \
        libxcb-xfixes0-dev libx11-xcb-dev
```

### Install Nvidia CUDA 10.2 on Ubuntu 16.04
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

## OBS Studio settings for NVENC
![OBS Studio settings for NVENC](https://github.com/pizslacker/obs-studio-nvenc/blob/master/img/osb-studio-nvenc-settings.png)
