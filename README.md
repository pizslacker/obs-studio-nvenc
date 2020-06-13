# OBS-Studio-NVENC
Scripts to build **FFmpeg** + **OBS-Studio** with **NVENC** hardware-encoding/decoding capability.

Generates .deb-packages for Ubuntu after compiling completes.

## Use-cases
Utilize **Nvidia NVenc** (*Nvidia Encoder/Decoder*) hardware-acceleration, to speed up:

- Streaming screencasts / games with **OBS-Studio** (to YouTube / Twitch)
- Recording screencasts with **OBS-Studio**
- Using **FFmpeg** to transcode video-files (encode from one format to another)

## Advantages
The main advantage with using Nvidia NVenc for OBS-Studio is mainly transferring video-encoding / -decoding / -transcoding capabilities from the system CPU, to a capable Nvidia GPU.

Video coding involves a lot of floating-point calculations, which is resource-hungry (and slow) on conventional CPUs, while on Nvidia's CUDA-cores is heavily sped up and optimized.

List of advantages on using Nvidia CUDA for vide-coding:
- Speed up video encoding / decoding / transcoding / streaming with direct hardware-acceleration
- Transferring floating-point processing over on an Nvidia GPU instead of the system CPU
- Higher FPS count in game-streams and screencasts
- Improved / sharpened image-quality
- Removal of video- / audio-lag in streams and recordings

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
        libxcb-xinerama0-dev libxcomposite-dev libxinerama-dev python3-dev \
        swig libxcb-randr0-dev libx11-xcb-dev
```

[Install Nvidia CUDA 10.2 on Ubuntu 16.04!](https://github.com/pizslacker/obs-studio-nvenc/blob/master/install-cuda-10.2-sdk-ubuntu-16.04.sh)
)
[Install Nvidia CUDA 10.2 on Ubuntu 18.04!](https://github.com/pizslacker/obs-studio-nvenc/blob/master/install-cuda-10.2-sdk-ubuntu-18.04.sh)
)

### Fix nvidia-settings bug with nvidia-440 on Ubuntu 16.04
```
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/nvidia-settings_440.33.01-0ubuntu1_amd64.deb
sudo dpkg -i nvidia-settings_440.33.01-0ubuntu1_amd64.deb
sudo apt-mark hold nvidia-settings
```

## OBS Studio settings for NVENC
![OBS Studio settings for NVENC](https://github.com/pizslacker/obs-studio-nvenc/blob/master/img/osb-studio-nvenc-settings.png)
