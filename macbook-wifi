#!/bin/bash

# Install b43
sudo apt-get update
sudo apt-get install firmware-b43-installer
sudo apt autoremove

modprobe -r b44 b43 b43legacy ssb brcmsmac bcma wl mac80211 cordic brcmutil

ip link set wlp2s0 down >/dev/null 2>&1
ip link set wlp2s0b1 down >/dev/null 2>&1

sudo modprobe -r cfg80211
sudo modprobe mac80211
sudo modprobe b43

sudo systemctl restart network-manager.service

