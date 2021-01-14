#!/usr/bin/bash

add_repos () {
    # Add Sublime Text repo
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    sudo apt-get install apt-transport-https
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    # Add VSCodium repo -- TODO: expand to functions
    wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
    echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list 
}

update () {
    sudo apt update
}

install_deb_packages () {
    mullvad_vpn () {
        curl -s -v https://api.github.com/repos/mullvad/mullvadvpn-app/releases/latest | grep "browser_download_url.*amd64.deb" | cut -d : -f 2,3 | tr -d \" | wget -qi -
        rm *asc*
        sudo dpkg -i MullvadVPN*
        rm MullvadVPN*
    }
    tixati () {
        wget https://download2.tixati.com/download/tixati_2.73-1_amd64.deb
        sudo dpkg -i tixati_2.73-1_amd64.deb
        rm tixati_2.73-1_amd64.deb
    }
    ytdl () {
        sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
        sudo chmod a+rx /usr/local/bin/youtube-dl
    }

    #mullvad_vpn # TODO: fix download timeout
    tixati
    ytdl
}

install_apt_packages () {
    sudo apt install $(cat pop-os.packages) -y
}

build_packages () {
    sudo dpkg-reconfigure libdvd-pkg
}

upgrade () {
    sudo apt upgrade
}

setup_bashrc () {
    echo '[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personal' >> .bashrc
}

main () {
    #add_repos
    #update
    #install_deb_packages
    #install_apt_packages
    #build_packages
    #upgrade
    #setup_bashrc
}

main "$@"
