# pop-os-setup
Setup Script for Pop!OS 20.04

Video Walkthrough
https://www.youtube.com/watch?v=400g2uVV090

Use the following command to run the script easily in one run:

wget https://raw.githubusercontent.com/sckitt/pop-os-setup/master/pop-os-setup.sh && sudo chmod +x pop-os-setup.sh && ./pop-os-setup.sh

Below is everything is included in this script:

1. Install custom repositories (Cinnamon DE, KeePassXC, Nextcloud, Papirus Icon Theme, Spotify, Sublime Text, VSCodium)
2. Install packages without repo (Mullvad VPN, Tixati, Tutanota, Tor, youtube-dl)
3. Update cache for package installs
4. Install packages via apt-get (30+ package suites)
**See complete listing @ https://github.com/sckitt/pop-os-setup/blob/master/pop-os.packages
5. Download, build and install libdvdcss from source

Below is a list of optional/manual installs:

* improving gaming performance ([DXVK](https://github.com/lutris/docs/blob/master/HowToDXVK.md), [Wine dependencies](https://github.com/lutris/docs/blob/master/WineDependencies.md), [driver support](https://github.com/lutris/docs/blob/master/InstallingDrivers.md), [graphics drivers](https://github.com/doitsujin/dxvk/wiki/Driver-support)) [video walkthrough](https://youtu.be/-jLCjY7PNig?t=466)
* [projectM](https://github.com/projectM-visualizer/projectM)