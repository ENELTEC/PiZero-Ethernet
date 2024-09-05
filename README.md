# PiZero-Ethernet by Eneltec

Developed for use in Raspberry Pi Zero 2W
Tested on: Raspberry Pi OS Lite 32-bit, July 4th 2024 | Kernel version: 6.6 | Debian version: 12 (bookworm) | Size: 500MB

This software enables the use of Eneltec dual-Ethernet Hat for use with Raspberry Pi Zero 2W. The hat contains two ENC28J60 modules and creates interfaces ```eth0``` and ```eth1```.

***Check routes if having trouble with connection or vpn***

# How to install


To update your device and clone the repository:
```
sudo apt -y update
sudo apt -y upgrade
sudo apt install git -y
sudo git clone https://github.com/ENELTEC/PiZero-Ethernet.git eth

```
Simply run ``` sudo sh install.sh ``` or do the step by step.
To move the files and restart the device:
# Installation Instructions

## Option 1: Run the `install.sh` script
For an automated installation, simply run the provided script:

```bash
sudo sh install.sh
```
## Option 2: Manual Installation
If you prefer to execute the steps manually, follow these commands to move the files and restart the device:

1. Make the `eth` file executable:
    ```bash
    sudo chmod +x eth
    ```

2. Append the contents of `config.txt` to `/boot/firmware/config.txt`:
    ```bash
    sudo cat eth/src/config.txt | sudo tee -a /boot/firmware/config.txt
    ```

3. Append the contents of `cmdline.txt` to `/boot/firmware/cmdline.txt`:
    ```bash
    sudo cat eth/src/cmdline.txt | sudo tee -a /boot/firmware/cmdline.txt
    ```

4. Compile and move the device tree overlay file:
    ```bash
    sudo dtc -I dts -O dtb -o /boot/firmware/overlays/enc28j60-spi1.dtbo eth/src/enc28j60-spi1.dts
    ```

5. Modify the route metric for the preconfigured connection:
    ```bash
    sudo nmcli connection modify preconfigured ipv4.route-metric 0
    ```

6. Reboot the device to apply changes:
    ```bash
    sudo reboot
    ```
