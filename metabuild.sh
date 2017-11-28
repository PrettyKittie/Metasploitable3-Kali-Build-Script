#!/bin/bash

#update/upgrade system
apt-get update
apt-get -y dist-upgrade
apt-get -y upgrade
apt-get -y autoremove

#install necessary packages
apt-get install virtualbox virtualbox-guest-additions-iso virtualbox-dkms virtualbox-ext-pack packer vagrant

#remove unnecessary packages
sudo apt-get remove ruby-libvirt

#install missing gem plugins
gem install vagrant-reload
gem install winrm
gem install winrm-elevated

#remove unncecessary gem plugins
gem uninstall -i /usr/share/rubygems-integration/2.3.0 json
gem uninstall -i /usr/share/rubygems-integration/all timers
apt-get autoremove

#retrieve and extract Metasploitable3
wget https://github.com/rapid7/metasploitable3/archive/master.zip
unzip master.zip
cd /media/root/Data/metasploitable3-master/
#
# fork this for myMetabuild.sh
# mv /media/root/Data/metasploitable3-master/ /media/root/Data/meta3/
# cd /media/root/Data/meta3
# edit virtualbox (change default location of vm's)
#

#begin Metasploitable3 build and provisioning process
./build_win2008.sh
vagrant up
