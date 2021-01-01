# pop-os-setup
Setup Script for [Pop!OS](https://pop.system76.com/)

Video Walkthrough https://www.youtube.com/watch?v=400g2uVV090

Use the following command to run the script easily in one run:

    wget https://raw.githubusercontent.com/sckitt/pop-os-setup/master/pop-os-setup.sh && sudo chmod +x pop-os-setup.sh && ./pop-os-setup.sh

Below is everything is included in this script:

1. Add repositories
2. Update package database
3. Install packages from 3rd-parties
4. Install packages from apt
5. Download, install and build packages
6. Update packages
7. Import bashrc

Below is a list of optional installs:

* setup-gaming ([video walkthrough](https://youtu.be/-jLCjY7PNig?t=466))
    * [DXVK](https://github.com/lutris/docs/blob/master/HowToDXVK.md)
    * [Wine dependencies](https://github.com/lutris/docs/blob/master/WineDependencies.md)
    * [driver support](https://github.com/lutris/docs/blob/master/InstallingDrivers.md)
    * [graphics drivers](https://github.com/doitsujin/dxvk/wiki/Driver-support)
* [torbrowser](https://www.torproject.org/download/)
* [mullvad-vpn](https://mullvad.net/en/download/linux/)