#!/usr/bin/env bash

# sets up pnpm for lunarvim
pnpm setup

# source .bashrc
eval "$(cat ~/.bashrc | tail -n +10)"

# install lunarvim
curl https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh | bash -s -- --no-install-dependencies
