# Docker Image for Tron Solidity

This repository is for building Docker images of the Tron-flavored solidity compiler.

With this image you can do something as simple as:

    $ docker run -v /path/to/contract:/src sunstake/solc-tron --other-solc-options

to compile a Tron contract.

## Docker Hub

Images are built with Docker Hub's automated build service. Available [here](https://hub.docker.com/r/sunstake/solc-tron).

Current images are built by directly downloading from GitHub releases. This shall be changed in the future to building from source intead.
