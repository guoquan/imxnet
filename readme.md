# Interactive with MXNet


[![Docker Pulls](https://img.shields.io/docker/pulls/guoq/imxnet.svg)](//hub.docker.com/r/guoq/imxnet)
[![Docker Stars](https://img.shields.io/docker/stars/guoq/imxnet.svg)](//hub.docker.com/r/guoq/imxnet)

*NOTE*: the manually build version with more features is now moved to [guoq/imxnet-manual](//hub.docker.com/r/guoq/imxnet-manual).

## Introduction

[MXNet](//github.com/dmlc/mxnet) is a famous opensource deep learning framework. Setting up the environment to run MXNet is a little bit complicated. Thanks to [Kaixhin](//hub.docker.com/u/kaixhin)'s images, we can use MXNet with Docker without such pain.

To further satisfiy the lazy ~~(in fact I spell this word T-A-L-E-N-T)~~ guys who want to play with MXNet more cosily, for example, with `kitematic` UI controls or with `jupyter` (F/K/A `ipython notebook`) to work in a browser rather than a terminal, as myself, I build this repository.

This repository is based on [kaixhin/mxnet](//hub.docker.com/r/kaixhin/mxnet) and I will be looking at the `CUDA` versions soon.

## Features

* Interactive with `ipython`.
* Directly access the amazing deep learning tools right within a browser, with `jupyter`.
* Compatible with `kitematic` where you can run and maintain the container in a snap. Open your

JUST OPEN YOUR BROWSER AND SEE EVERYTHING READLY!

## Usage

Currently I have just pushed the `develop` tag.

1. with `kitematic`
 
    If you are using `kitematic`, select this tag and create a container than everything is OK.

2. with command line
 
   If you are using command line, just pull with this tag:

    ```bash
docker pull guoq/imxnet:develop
    ```

    and run it with exposed ports published and the workspace    binded to a host directory:

    ```bash
docker run -d -P -v $(pwd):/root/workspace --name=imxnet imxnet:develop
    ```
    use the `port` command to find the port of your `jupyter` service:
    
    ```bash
docker port imxnet
    ```
    
    If you want to specified the port on the host to be use, default port for `jupyter` is `8888`.
Add any flag for `jupyter` after the command and they will be sent.

    There is a termial in `jupyter` where you can also interactive the the container.

    To stop the service, just stop the container:
    
    ```bash
docker stop imxnet
    ```

## TODO
* Add `tmux` to allow actually working inside the container.
* Add a entrypoint script to switch `inside mode` and `outside mode`.
* The entrypoint script should also tackle with the `libdc1394` error message.
* Add ~~your favorite~~ `zsh` + `ohmyzsh` + `vim`.
* Add differnt `CUDA` versions.