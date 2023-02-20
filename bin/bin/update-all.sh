#!/bin/sh
echo 'UPDATING ==> Ceres'
ssh -t ceres 'sudo nala upgrade -y && sudo nala autoremove -y'
echo
echo 'UPDATING ==> Pallas'
ssh -t pallas 'sudo nala upgrade -y && sudo nala autoremove -y'
echo
echo 'UPDATING ==> Titan'
ssh -t titan 'sudo nala upgrade -y && sudo nala autoremove -y'
echo
echo 'UPDATING ==> 100'
ssh -t 100 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 101'
ssh -t 101 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 102'
ssh -t 102 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 103'
ssh -t 103 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 104'
ssh -t 104 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 105'
ssh -t 105 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 106'
ssh -t 106 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 107'
ssh -t 107 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 108'
ssh -t 108 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 109'
ssh -t 109 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 110'
ssh -t 110 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
echo 'UPDATING ==> 111'
ssh -t 111 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
echo
#echo 'UPDATING ==> 112'
#ssh -t 113 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
#echo
echo '*** UPDATES COMPLETE ***'
