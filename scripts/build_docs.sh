#!/usr/bin/env sh

gem install jazzy --no-ri --no-rdoc

rm -rf tun2socks
git submodule update --init --remote --merge

jazzy
