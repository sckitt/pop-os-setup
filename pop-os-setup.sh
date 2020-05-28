#!/usr/bin/bash
cd ~
# First we setup the repositories so we can install lots of stuff
# Set Virtual Box repo
wget https://raw.githubusercontent.com/sckitt/pop-os-setup/master/pop-os.packages
# Install Cinnamon repo
sudo add-apt-repository universe
# Install KeePassXC repo
sudo add-apt-repository ppa:phoerious/keepassxc
# Install Spotify repo
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
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
# Download Nextcloud
wget https://download.nextcloud.com/desktop/releases/Linux/latest
# Install Tixati
wget https://download2.tixati.com/download/tixati_2.73-1_amd64.deb
sudo dpkg -i tixati_2.73-1_amd64.deb
rm tixati_2.73-1_amd64.deb
# Download Tutanota
wget https://mail.tutanota.com/desktop/tutanota-desktop-linux.AppImage
# Download Tor
wget https://www.torproject.org/dist/torbrowser/9.0.10/tor-browser-linux64-9.0.10_en-US.tar.xz
tar xf tor-browser-linux64-9.0.10_en-US.tar.xz
rm tor-browser-linux64-9.0.10_en-US.tar.xz
cd ~
# Install youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# Update cache for package installs
sudo apt-get update
# grab all packages to install
sudo apt-get install $(cat ~/pop-os.packages) -y
# Install libdvdcss from source
sudo dpkg-reconfigure libdvd-pkg
