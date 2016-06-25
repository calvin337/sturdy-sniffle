#!/usr/bin/env bash
clear
username=$1
echo "Removing old Koans Directory"
rm -rf MKS-javascript-koans
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-javascript-koans.git for repo"
git clone  https://github.com/$username/MKS-javascript-koans.git
