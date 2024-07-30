# PiZero-Ethernet by Eneltec
Develop for use in Raspberry Pi Zero 2W

Tested on:
Raspberry Pi OS Lite 32-bit, July 4th 2024
Kernel version: 6.6 | Debian version: 12 (bookworm) | Size: 500MB

# How to install

```
sudo apt -y update
sudo apt -y upgrade
sudo apt install git -y
sudo git clone https://github.com/ENELTEC/PiZero-Ethernet.git eth
sudo chmod +x eth/src/install.py
sudo python3 eth/src/install.py
```