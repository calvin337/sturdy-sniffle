#!/usr/bin/env bash
clear
username=$1
echo "USERNAME: $username"

echo -e "\nRemoving old Koans Directory"
cd koans
rm -rf MKS-javascript-koans
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-javascript-koans.git for repo"
git clone  https://github.com/$username/MKS-javascript-koans.git

#!/bin/bash
echo -e "\nRemoving old underbar directory"
cd ../underbar
rm -rf MKS-underbar
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-underbar.git for repo"
git clone  https://github.com/$username/MKS-underbar.git

#!/usr/bin/env bash
echo -e "\nRemoving old Twittler Directory"
cd ../twittler
rm -rf MKS-twittler
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-twittler.git for repo"
git clone  https://github.com/$username/MKS-twittler.git

#!/usr/bin/env bash
echo -e "\nRemoving old Recursion Directory"
cd ../recursion
rm -rf MKS-recursion
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-recursion.git for repo"
git clone  https://github.com/$username/MKS-recursion.git

#!/usr/bin/env bash
echo -e "\nRemoving old Self Assessment 1 Directory"
cd ../self1
rm -rf MKS-self-assessments-prcs-01
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-self-assessments-prcs-01.git for repo"
git clone  https://github.com/$username/MKS-self-assessments-prcs-01.git

#!/usr/bin/env bash
echo -e "\nRemoving old Self Assessment 2 Directory"
cd ../self2
rm -rf MKS-self-assessments-prcs-02
echo "Attempting to clone down repo for $username"
echo "Looking at https://github.com/$username/MKS-self-assessments-prcs-02.git for repo"
git clone  https://github.com/$username/MKS-self-assessments-prcs-02.git
