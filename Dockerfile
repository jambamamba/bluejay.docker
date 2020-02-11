FROM ubuntu:19.04

COPY runscript.sh /tmp
RUN /tmp/runscript.sh
ENV HOME /home/dev
ENV PATH="${PATH}:/home/dev/Downloads/cmake-3.12.2-Linux-x86_64/bin:/usr/games"
ENV CC=/usr/bin/clang
ENV CXX=/usr/bin/clang++
USER dev
WORKDIR /home/dev
COPY configure-container.sh /home/dev/configure-container.sh
