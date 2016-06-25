#!/usr/bin/env bash
clear
username=$1
echo "Removing old Twittler Directory"
rm -rf MKS-twittler
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-twittler.git for repo"
git clone  https://github.com/$username/MKS-twittler.git
