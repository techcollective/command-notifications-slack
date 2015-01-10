#!/bin/sh
##
# Run this script to install the functions to ya .bashrc
##

cat bashrc >> ~/.bashrc
ln -s slack-notify.sh /usr/bin/slack-notify
echo "Install complete"
