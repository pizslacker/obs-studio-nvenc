#!/bin/bash
# Script to build OBS-studio for use with NVIDIA NVENC encoder/decoder chip
# Add obs-studio PPA
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update
# Get obs-studio source
apt-get source obs-studio
cd obs-studio-25.0.8/
# Make build-directory
mkdir build && cd build
# Run cmake to generate configuration
cmake -DUNIX_STRUCTURE=1 -DCMAKE_INSTALL_PREFIX=/usr ..
# Compile OBS-Studio with 8 CPU threads
make -j 8 -s
# Make Debian package
sudo checkinstall --pkgname=obs-studio
# Mark obs-studio package on hold
sudo apt-mark hold obs-studio
