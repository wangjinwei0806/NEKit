#!/usr/bin/env sh

gem install jazzy --no-ri --no-rdoc

rm -rf tun2socks
git submodule update --init --remote --merge

jazzy --swift-version 2.2 \
      -o ./ \
      --source-directory NEKit/ \
      --readme NEKit/README.md \
      --author "Zhuhao Wang" \
      --module "NEKit" \
      --github_url "https://github.com/zhuhaow/NEKit"

