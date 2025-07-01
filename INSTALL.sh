#!/usr/bin/env bash
###############################################################################
##
##       filename: INSTALL.sh
##    description:
##        created: 2024/02/28
##         author: ticktechman
##
###############################################################################

function bootstrap() {
  apt update &&
  termux-change-repo &&
  apt upgrade
}

function install.basic() {
  echo "=> install basic" &&
    cp bashrc $HOME/.bashrc &&
    cp vim/vimrc $HOME/.vimrc &&
    mkdir -p $HOME/.vim/ && cp -a vim/colors $HOME/.vim/ &&
    mkdir -p ~/.termux/boot &&
    apt install -y vim &&
    echo "=> succ" || echo "=> fail"
}

function install.sshd() {
  echo "=> install sshd" &&
    apt install -y openssh &&
    cp ./server/ssh/sshd.sh $HOME/.termux/boot/sshd.sh &&
  echo "=> succ" || echo "=> fail"
}

function install.git() {
  echo "=> install git" &&
    apt install -y git &&
  echo "=> succ" || echo "=> fail"
}

###############################################################################
