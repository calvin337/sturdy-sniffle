#!/usr/bin/env bash
clear
username=$1
echo "Removing old Self Assessment 2 Directory"
rm -rf MKS-self-assessments-prcs-02
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-self-assessments-prcs-02.git for repo"
git clone  https://github.com/$username/MKS-self-assessments-prcs-02.git
