#!/bin/bash
# Ubuntu 开发环境一键配置脚本
# 使用方式: sudo bash ubuntu.sh

set -e  # 遇到错误立即退出

export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# 更新软件源
apt update -y

# python-dev
apt install -y python-dev 2>/dev/null || true  # python-dev 在某些系统已废弃
apt install -y python3-dev

# pip
apt install python3-pip -y
pip3 install --upgrade pip
pip3 install setuptools

apt install tree -y

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# spacevim
curl -sLf https://spacevim.org/install.sh | bash

# docker
apt install docker -y
apt install docker.io -y
pip3 install docker-compose

# portainer
docker run -d -p 9000:9000 --restart=always -v /var/run/docker.sock:/var/run/docker.sock --name portainer portainer/portainer

pip3 install jupyter

# git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'

pip3 install httpie
pip3 install thefuck

apt install unzip



