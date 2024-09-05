sudo apt -y update
sudo apt -y upgrade
sudo apt install git -y
sudo chmod +x eth
sudo cat eth/src/config.txt | sudo tee -a /boot/firmware/config.txt
sudo cat eth/src/cmdline.txt | sudo tee -a /boot/firmware/cmdline.txt
sudo sudo dtc -I dts -O dtb -o /boot/firmware/overlays/enc28j60-spi1.dtbo eth/src/enc28j60-spi1.dts
sudo sudo nmcli connection modify preconfigured ipv4.route-metric 0
sudo reboot