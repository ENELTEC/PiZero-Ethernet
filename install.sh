sudo apt -y update
sudo apt -y upgrade
sudo apt install git -y
sudo git clone https://github.com/ENELTEC/PiZero-Ethernet.git eth
sudo chmod +x eth
sudo cat eth/src/config.txt | sudo tee -a /boot/firmware/config.txt
sudo cat eth/src/cmdline.txt | sudo tee -a /boot/firmware/cmdline.txt
sudo dtc -I dts -O dtb -o /boot/firmware/overlays/enc28j60-spi1.dtbo eth/src/enc28j60-spi1.dts
sudo cp eth/services/routes.service /etc/systemd/system/routes.service
sudo systemctl enable routes.service
sudo reboot