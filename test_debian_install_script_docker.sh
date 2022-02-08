#!/usr/bin/env bash

version=4.19.2
script="install_debian_autopsy_${version}.sh"

docker run --rm -it -v "${PWD}/$script:/workdir/$script" -w /workdir debian:stable /bin/bash "$script"
