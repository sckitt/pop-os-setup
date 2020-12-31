#!/usr/bin/bash
cd ~
# Install KeePassXC repo
sudo add-apt-repository ppa:phoerious/keepassxc
# Install Sublime Text repo
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# Install VSCodium repo
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
sudo apt-add-repository 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main'
# Install Mullvad VPN
cd ~/Downloads
curl -s -v https://api.github.com/repos/mullvad/mullvadvpn-app/releases/latest | grep "browser_download_url.*amd64.deb" | cut -d : -f 2,3 | tr -d \" | wget -qi -
rm *asc*
sudo dpkg -i MullvadVPN*
rm MullvadVPN*
# Install Tixati
wget https://download2.tixati.com/download/tixati_2.73-1_amd64.deb
sudo dpkg -i tixati_2.73-1_amd64.deb
rm tixati_2.73-1_amd64.deb
# Install youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# Update cache for package installs
sudo apt-get update
# grab all packages to install
sudo apt-get install $(cat ~/pop-os.packages) -y
# Install libdvdcss from source
sudo dpkg-reconfigure libdvd-pkg
# Link .bashrc to .bashrc-personal
cat $(pwd)/dotfiles/.bashrc-snippet >> ~/.bashrc