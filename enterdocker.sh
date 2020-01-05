#!/bin/bash -xe
set -xe

pushd ~
docker run --rm -e DOCKERUSER=$USER -e DISPLAY=$DISPLAY -e GITUSER="$(git config --get user.name)" -e GITEMAIL="$(git config --get user.email)" -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/home/developer/.Xauthority --net=host -v $PWD:/home/developer/$USER --name bluejay --cap-add=SYS_PTRACE --privileged -it bluejay bash -c "/home/developer/configure-container.sh; bash"
popd
