#!/usr/bin/env bash
###############################################################################
##
##       filename: INSTALL.sh
##    description:
##        created: 2024/02/28
##         author: ticktechman
##
###############################################################################

apt update
termux-change-repo
apt upgrade

apt install -y vim openssh

###############################################################################
