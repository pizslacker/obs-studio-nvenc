# OBS-Studio-NVENC
Scripts to build/compile **FFmpeg** and **OBS-Studio** with **Nvidia&reg; CUDA&reg;** / **NVENC&reg;** hardware-encoding/decoding capability.

**Nvidia® NVENC® (Nvidia® Encoder/Decoder)** is a proprietary microcontroller hardware based encoding solution. 


Video coding involves a lot of floating-point calculations, which is resource-hungry (and slow) on conventional CPUs, while on Nvidia's CUDA-cores is heavily sped up and optimized. The NVENC&reg; video-chip included on high-end Nvidia cards accelerates x264/x265(hevc) decoding/encoding as well.

The ffmpeg-script generates a (.deb) package for Ubuntu Desktop 18.04 / 20.04 after compiling completes.

## Build instructions:
1. Install the dependencies (listed below)
2. Build FFmpeg
3. Install latest OBS Studio

## Requirements

### Ubuntu Desktop Dependencies
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
        swig libxcb-randr0-dev libx11-xcb-dev yasm nasm libmp3lame0 libmp3lame-dev \
        libqt5svg5 libqt5svg5-dev libx265-dev nvidia-cuda-toolkit
```

## Use-cases
Utilize **Nvidia&reg; NVENC&reg;** (*Nvidia&reg; Encoder/Decoder*) hardware-acceleration, to speed up:

- Streaming screencasts / games with **OBS-Studio** (to YouTube / Twitch)
- Recording screencasts / games with **OBS-Studio**
- Using **FFmpeg** to transcode video-files (encode from one format to another)

## Advantages
The main advantage with using Nvidia&reg; NVENC&reg; for OBS-Studio is mainly transferring video-encoding / -decoding / -transcoding capabilities from the system CPU, to a capable Nvidia&reg; GPU.

List of advantages on using Nvidia&reg; CUDA&reg; / NVENC&reg; for video-transcoding:
- Speed up video encoding / decoding / transcoding / streaming with direct hardware-acceleration
- Transferring floating-point processing over on an Nvidia GPU instead of the system CPU
- Higher FPS count in game-streams and screencasts
- Improved / sharpened image-quality
- Removal of video- / audio-lag in streams and recordings

## OBS Studio settings for NVENC
![OBS Studio settings for NVENC](https://github.com/pizslacker/obs-studio-nvenc/blob/master/img/osb-studio-nvenc-settings.png)
