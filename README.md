# PiZero-Ethernet by Eneltec

Developed for use in Raspberry Pi Zero 2W
Tested on: Raspberry Pi OS Lite 32-bit, July 4th 2024 | Kernel version: 6.6 | Debian version: 12 (bookworm) | Size: 500MB

This software enables the use of Eneltec dual-Ethernet Hat for use with Raspberry Pi Zero 2W. The hat contains two ENC28J60 modules and creates interfaces ```eth0``` and ```eth1```.

***Check routes if having trouble with connection or vpn***

# How to install

```
sudo apt -y update
sudo apt -y upgrade
sudo apt install git -y
sudo git clone https://github.com/ENELTEC/PiZero-Ethernet.git eth
sudo chmod +x eth/src/install.py
sudo python3 eth/src/install.py
```

After that, reboot the system and check the status of the ethernet connection. 
You can check with commands ```route``` or ```ipconfig```.