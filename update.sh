#!/bin/bash

sudo apt-get update -y;
clear
sudo apt-get upgrade -y
clear
sudo apt-get --fix-broken install -y
clear
sudo apt-get autoremove -y
clear
exit
