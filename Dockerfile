FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

ARG WORKSPACE=/tmp

WORKDIR ${WORKSPACE}

RUN apt-get update && apt-get install -y \
    git \
    g++ \
    make \
    automake \
    autoconf \
    zip \
    libcurl4-openssl-dev \
    libssl-dev \
    uuid-dev \
    zlib1g-dev \
    libpulse-dev

ARG CHECKOUT_COMMIT=v3.20.1

# build & install latest cmake
RUN git clone https://github.com/Kitware/CMake.git && \
    cd CMake && \
    git checkout ${CHECKOUT_COMMIT} && \
    ./bootstrap --prefix=/usr && \
    make && \
    make install

RUN rm -rfv CMake
