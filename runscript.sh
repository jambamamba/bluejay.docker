#!/bin/bash

set -xe

apt-get update
apt-get install -y sudo
export uid=1000 gid=1000
mkdir -p /home/developer
echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
echo "developer:x:${uid}:" >> /etc/group
echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
chmod 0440 /etc/sudoers.d/developer
chown ${uid}:${gid} -R /home/developer
DEBIAN_FRONTEND=noninteractive apt-get install -y\
 apt-utils\
 libpng-dev\
 libjpeg-dev\
 libtiff-dev\
 libxxf86vm1\
 libxxf86vm-dev\
 libxi-dev\
 libxrandr-dev\
 build-essential\
 git mercurial\
 cmake\
 libglu1-mesa-dev\
 libxmu-dev\
 libxi-dev\
 libcgal-dev\
 libcgal-qt5-dev\
 libatlas-base-dev\
 libsuitesparse-dev\
 freeglut3-dev\
 libglew-dev\
 libglfw3-dev\
 libc++-dev\
 libc++abi-dev\
 bc\
 build-essential\
 automake\
 nasm\
 firefox\
 mercurial\
 build-essential\
 yasm\
 ninja-build\
 clang\
 curl\
 dos2unix\
 gcc\
 gdb\
 genext2fs\
 git\
 bash-completion\
 htop\
 jq\
 libidn11\
 libxkbcommon-x11-0\
 software-properties-common\
 tcl\
 vim\
 emacs\
 gedit\
 meld\
 wget\
 rpm2cpio\
 cowsay\
 fortune\
 cpio\
 libgtk2.0-dev\
 pkg-config\
 psmisc\
 xterm\
 xvfb\
 zlibc zlib1g zlib1g-dev\
 zsh\
 inetutils-ping\
 libgl1-mesa-dev\
 libprotobuf-dev\
 automake\
 autoconf\
 libtool\
 unzip\
 kpartx\
 apache2\
 ufw\
 php\
 php-mysql\
 libpulse-mainloop-glib0\
 python3-pip
mkdir /home/developer/Downloads
cd /home/developer/Downloads
wget "https://cmake.org/files/v3.12/cmake-3.12.2-Linux-x86_64.tar.gz"
tar -xzvf cmake-3.12.2-Linux-x86_64.tar.gz
export PATH=$PATH:/home/developer/Downloads/cmake-3.12.2-Linux-x86_64/bin
chown -R developer:developer /home/developer
export "PS1=$(whoami)@$(hostname):$(pwd) >
cd /home/developer/\
"
