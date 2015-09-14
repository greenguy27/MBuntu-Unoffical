#!/bin/bash
#==================================================================
#Script originally created by Noobs LAB
# http://www.noobslab.com/2015/05/mbuntu-y-macbuntu-transformation-pack.html
#==================================================================


#Install Repositories
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/apps

#Run update
sudo apt-get update

#MacBuntu OS Y Theme, Icons and cursors
sudo apt-get install mbuntu-y-ithemes-v5
sudo apt-get install mbuntu-y-icons-v5

#To Uninstall themes, icons and cursors
#cd /usr/share/icons/mac-cursors && sudo ./uninstall-mac-cursors.sh
#sudo apt-get remove mbuntu-y-icons-v5 mbuntu-y-ithemes-v5

#Slingscold (Alternative to Launchpad)
sudo apt-get install slingscold

#Mutate Spotlight (Alternative to Mac Spotlight)
sudo apt-get install mutate

# Install Docky
sudo apt-get install docky

#Install Docky themes
sudo apt-get install mbuntu-y-docky-skins-v5

#Remove Docky THemes
#sudo apt-get autoremove docky mbuntu-y-docky-skins-v5

#Set the themese and icons for Unity
cd && wget -O config.sh http://drive.noobslab.com/data/Mac-15.04/config.sh
chmod +x config.sh;./config.sh

#Revert themes back to normal
#cd && wget -O unconfig.sh http://drive.noobslab.com/data/Mac-15.04/unconfig.sh
#chmod +x unconfig.sh;./unconfig.sh

#Replace "Ubuntu Desktop" with "Mac" on the Panel
cd && wget -O Mac.po http://drive.noobslab.com/data/Mac-15.04/change-name-on-panel/mac.po
cd /usr/share/locale/en/LC_MESSAGES; sudo msgfmt -o unity.mo ~/Mac.po;rm ~/Mac.po;cd

#Revert Back to "Ubuntu Desktop"
#cd && wget -O Ubuntu.po http://drive.noobslab.com/data/Mac-15.04/change-name-on-panel/ubuntu.po
#cd /usr/share/locale/en/LC_MESSAGES; sudo msgfmt -o unity.mo ~/Ubuntu.po;rm ~/Ubuntu.po;cd

#Apple Logo Launcher
wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac-15.04/launcher-logo/apple/launcher_bfb.png
sudo mv launcher_bfb.png /usr/share/unity/icons/
#Revert back to Ubuntu Launcher
#wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac-15.04/launcher-logo/ubuntu/launcher_bfb.png
#sudo mv launcher_bfb.png /usr/share/unity/icons/

#Tweak Tools to change Themes & Icons
sudo apt-get install unity-tweak-tool
sudo apt-get install gnome-tweak-tool

#Install Monochrome icons for Libreoffice
sudo apt-get install libreoffice-style-sifr

#Install Mac Fonts
wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac-15.04/macfonts.zip
sudo unzip mac-fonts.zip -d /usr/share/fonts; rm mac-fonts.zip
sudo fc-cache -f -v

#Begin Unstable
#Install MacBuntu theme for LightDM Webkit Greeter
#sudo add-apt-repository ppa:noobslab/themes
#sudo apt-get update
#sudo apt-get install mbuntu-y-lightdm-v5
#End Unstable

#Begin if you install it anyway
#revert back to LightDM
#sudo apt-get remove mbuntu-y-lightdm-v5
#End Begin if you install it anyway
