#!/usr/bin/env bash
clear
username=$1
echo "Removing old Recursion Directory"
rm -rf MKS-recursion
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-recursion.git for repo"
git clone  https://github.com/$username/MKS-recursion.git
