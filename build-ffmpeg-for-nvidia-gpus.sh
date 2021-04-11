#!/bin/bash
# Script to build FFmpeg for Nvidia GPUs, utilizing NVenc encoder/decoder
# Using: nv-codec-headers + ffmpeg git repositories
#
# Remove ubuntu-standard ffmpeg
sudo apt-get remove --purge ffmpeg
# Clone latest NV-codec-headers (Nvidia)
git clone https://github.com/FFmpeg/nv-codec-headers
cd nv-codec-headers/
sudo make install
cd ../
# Clone latest ffmpeg git, build and install ffmpeg (for Nvidia GPUs)
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg/
./configure --enable-cuda --enable-cuvid --enable-nvenc --enable-nonfree --enable-libnpp --extra-cflags=-I/usr/local/cuda/include --extra-ldflags=-L/usr/local/cuda/lib64 --enable-shared --enable-gpl --enable-version3 --enable-runtime-cpudetect --disable-opencl --enable-libmp3lame --enable-libx264 --cc="gcc -m64 -fPIC" && \
# Compile with 8 CPU threads 
make -j 8 -s && \
# Build and install Ubuntu/Debian .deb-package
sudo checkinstall --pkgname=FFmpeg
sudo apt-mark hold ffmpeg
# Run linker and make symlink to ffmpeg
sudo ldconfig && sudo ln -s /usr/local/bin/ffmpeg /usr/bin/ffmpeg
cd ../
