#! /bin/bash

# Install Openvswitch
sudo apt-get update
printf "Y" | sudo apt-get install openvswitch-switch
sudo apt-get install openvswitch-common
printf "Y" | sudo apt-get install openvswitch-controller

# Add ports to br0
./test_ifconfig.sh
