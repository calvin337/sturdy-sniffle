#!/bin/bash
clear
username=$1
echo "Removing old underbar directory"
rm -rf MKS-underbar
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-underbar.git for repo"
git clone  https://github.com/$username/MKS-underbar.git
