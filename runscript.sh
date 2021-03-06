#!/bin/bash

set -xe
apt-get update --ignore-missing --fix-missing
#apt-get update
#apt --fix-broken -y install
DEBIAN_FRONTEND=noninteractive apt-get install --ignore-missing  -y \
 apache2\
 apt-utils\
 autoconf\
 automake\
 automake\
 bash-completion\
 bc\
 bison\
 build-essential\
 clang\
 cmake\
 cowsay\
 cpio\
 curl\
 dos2unix\
 dclock\
 emacs\
 firefox\
 fortune\
 freeglut3-dev\
 gcc\
 gdb\
 gedit\
 genext2fs\
 git mercurial\
 git\
 htop\
 inetutils-ping\
 jq\
 kpartx\
 libatlas-base-dev\
 libc++-dev\
 libc++abi-dev\
 libcgal-dev\
 libgl1-mesa-dev\
 libglew-dev\
 libglfw3-dev\
 libglu1-mesa-dev\
 libgtk2.0-dev\
 libidn11\
 libjpeg-dev\
 libpng-dev\
 libprotobuf-dev\
 libpulse-mainloop-glib0\
 libssl-dev\
 libsuitesparse-dev\
 libtiff-dev\
 libtool\
 libxcb-icccm4\
 libxcb-image0\
 libxcb-keysyms1\
 libxcb-render-util0\
 libxcb-xinerama0\
 libxcb-render-util0\
 libxcb-xinerama0\
 libxi-dev\
 libxi-dev\
 libxkbcommon-x11-0\
 libxml++2.6-dev\
 libxmu-dev\
 libxrandr-dev\
 libxxf86vm-dev\
 libxxf86vm1\
 libxss1\
 mcrypt\
 meld\
 mercurial\
 nasm\
 ninja-build\
 pkg-config\
 psmisc\
 python3-pip\
 re2c\
 rpm2cpio\
 sqlite3\
 libsqlite3-dev\
 libcurl4-openssl-dev\
 libonig-dev\
 libzip-dev\
 rsync\
 software-properties-common\
 thunar\
 ufw\
 unzip\
 vim\
 wget\
 x11-xserver-utils\
 xterm\
 xvfb\
 yasm\
 zlib1g-dev\
 zlib1g\
 zlibc\
 zsh\
 mysql-server\
 php7.2\
 libapache2-mod-php7.2\
 php7.2-dev\
 php7.2-bz2\
 php-pear\
 php7.2-cli\
 php7.2-fpm\
 php7.2-bcmath\
 php7.2-curl\
 php7.2-gd\
 php7.2-intl\
 php7.2-json\
 php7.2-mbstring\
 php7.2-mysql\
 php7.2-opcache\
 php7.2-sqlite3\
 php7.2-xml\
 php7.2-zip\
 chromium-browser\
 sshfs
# libnvidia-gl-418\
#apt --fix-broken -y install
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
mkdir -p /home/dev
mkdir -p /home/dev/Downloads
mkdir -p /home/dev/Documents
apt-get install -y sudo
groupadd --gid 1000 dev
useradd --system --create-home --home-dir /home/dev --shell /bin/bash --gid root --groups sudo,dev --uid 1000 dev
passwd -d dev
export uid=1000 gid=1000
chown -R dev:dev /home/dev
echo "root:root" | chpasswd
echo "dev:dev" | chpasswd
export "PS1=$(whoami)@$(hostname):$(pwd) >
cd /home/dev/\
"
