#!/bin/bash

# Install b43
apt-get update
apt-get install firmware-b43-installer

ip link set wlp2s0 down >/dev/null 2>&1
ip link set wlp2s0b1 down >/dev/null 2>&1

modprobe -r cfg80211 brcmsmac cordic brcmutil bcma b44 b43legacy ssb
modprobe b43

