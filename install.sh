#!/bin/bash
# For Ubuntu 18
#CONF_DIR=~/deps/nvim
#mkdir -p ~/deps

sudo sed -i '50,$d' /etc/apt/sources.list

# add neovim
sudo add-apt-repository -y ppa:neovim-ppa/stable
# add lazygit 
sudo add-apt-repository -y ppa:lazygit-team/release
# add fish
#sudo add-apt-repository -y ppa:fish-shell/release-3

#sudo apt install -y software-properties-common
#sudo apt install -y neovim
#sudo apt install -y python-dev python-pip python3-dev python3-pip
#sudo apt autoremove -y

#git clone https://github.com/hiyali/nvim $CONF_DIR
#mkdir -p ~/.config
#ln -s $CONF_DIR ~/.config/nvim

#sudo update-alternatives --config editor

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
#&& sudo apt update \
#&& sudo apt install gh -y

echo "added githubcli"

sudo echo $'deb http://archive.ubuntu.com/ubuntu/ maverick-updates main universe restricted 
deb-src http://archive.ubuntu.com/ubuntu/ maverick-updates main universe restricted 
deb http://security.ubuntu.com/ubuntu maverick-security main restricted 
deb-src http://security.ubuntu.com/ubuntu maverick-security main restricted 
deb http://security.ubuntu.com/ubuntu maverick-security universe 
deb-src http://security.ubuntu.com/ubuntu maverick-security universe 
deb http://security.ubuntu.com/ubuntu maverick-security multiverse 
deb-src http://security.ubuntu.com/ubuntu maverick-security multiverse' | sudo tee -a /etc/apt/sources.list > /dev/null

echo "added long list of sources"

sudo apt update
echo "updated apt"

sudo apt install -y neovim \
  gh \
  bat \
  fzf \
  ripgrep \
  bash-completion \
  tmux \
  fish \
  nnn \
  software-properties-common \
  ranger \
  lazygit \
  figlet \
  caca-utils \
  highlight \
  atool \
  w3m \
  poppler-utils \
  mediainfo \
  gconf-service \
  libasound2 \
  libatk1.0-0 \
  libc6 \
  libcairo2 \
  libcups2 \
  libdbus-1-3 \
  libexpat1 \
  libfontconfig1 \
  libgcc1 \
  libgconf-2-4 \
  libgdk-pixbuf2.0-0 \
  libglib2.0-0 \
  libgtk-3-0 \
  libnspr4 \
  libpango-1.0-0 \
  libpangocairo-1.0-0 \
  libstdc++6 \
  libx11-6 \
  libx11-xcb1 \
  libxcb1 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxext6 \
  libxfixes3 \
  libxi6 \
  libxrandr2 \
  libxrender1 \
  libxss1 \
  libxtst6 \
  ca-certificates \
  fonts-liberation \
  libappindicator1 \
  libnss3 \
  lsb-release \
  xdg-utils \
  wget \
  libatk-bridge2.0-0 \
  libgbm-dev

echo "installed shit!"

sudo rm -rf /var/lib/apt/lists/*

# install chezmoi
#sh -c "$(curl -fsLS chezmoi.io/get)"
#sudo cp ./bin/chezmoi /usr/bin
#rm -rf ./bin
#echo "chezmoi installed"

# neovim config
#git clone https://github.com/djsnipa1/dotfiles-chezmoi
#cd ./dotfiles-chezmoi || { echo "Failure"; exit 1; }
#cd ./private_dot_config || { echo "Failure"; exit 1; }
#cp -r ./nvim ~/.config
#cp -r ./private_fish ~/.config/fish
#cd ../..
#rm -rf ./dotfiles-chezmoi
#echo "installed config files"

# install lazynpm
curl https://i.jpillora.com/jesseduffield/lazynpm!! | bash

# install eget
sudo curl https://zyedidia.github.io/eget.sh | sh
sudo cp ./eget /usr/bin
rm -rf ./eget

# install gh extensions
gh extension install redraw/gh-install
gh extension install sheepla/gh-fzrepo

# logo-ls
eget Yash-Handa/logo-ls
sudo mv logo-ls /usr/bin
alias ls=logo-ls

# install lf
sudo eget gokcehan/lf --to /usr/bin

# lunarvim
curl https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh | bash -s -- --no-install-dependencies

# install age
#sudo eget FiloSottile/age --to /usr/bin

# install fisher
#curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

echo "finished!"
