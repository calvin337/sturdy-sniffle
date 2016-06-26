@echo off
title MKS Precourse Batch Script

:start
cls
set /p username="Enter Username: "
echo.

echo "Removing old Koans Directory"
cd koans
RD /s /q "MKS-javascript-koans"
echo "Attempting to clone down MKS-javascript-koans for %username%"
echo "Looking at https://github.com/%username%/MKS-javascript-koans.git for repo"
git clone  https://github.com/%username%/MKS-javascript-koans.git
echo.

echo "Removing old underbar directory"
cd ../underbar
RD /s /q "MKS-underbar"
echo "Attempting to clone down MKS-underbar for %username%"
echo "Looking at https://github.com/%username%/MKS-underbar.git for repo"
git clone  https://github.com/%username%/MKS-underbar.git
echo.

echo "Removing old Twittler Directory"
cd ../twittler
RD /s /q "MKS-twittler"
echo "Attempting to clone down MKS-twittler for %username%"
echo "Looking at https://github.com/%username%/MKS-twittler.git for repo"
git clone  https://github.com/%username%/MKS-twittler.git
echo.

echo "Removing old Recursion Directory"
cd ../recursion
RD /s /q "MKS-recursion"
echo "Attempting to clone down MKS-recursion for %username%"
echo "Looking at https://github.com/%username%/MKS-recursion.git for repo"
git clone  https://github.com/%username%/MKS-recursion.git
echo.

echo "Removing old Self Assessment 1 Directory"
cd ../self \1
RD /s /q "MKS-self-assessments-prcs-01"
echo "Attempting to clone down MKS-self-assessments-prcs-01 for %username%"
echo "Looking at https://github.com/%username%/MKS-self-assessments-prcs-01.git for repo"
git clone  https://github.com/%username%/MKS-self-assessments-prcs-01.git
echo.

echo "Removing old Self Assessment 2 Directory"
cd ../self \2
RD /s /q "MKS-self-assessments-prcs-02"
echo "Attempting to clone down MKS-self-assessments-prcs-02 for %username%"
echo "Looking at https://github.com/%username%/MKS-self-assessments-prcs-02.git for repo"
git clone  https://github.com/%username%/MKS-self-assessments-prcs-02.git
echo.
cd ..

pause
goto :start
