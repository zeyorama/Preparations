# This script prepares the archbang system automatically
# but you need to do some previous configurations.
# !!!!! Running this script as ROOT !!!!!!!!!
#
# activate XferCommand curl (/etc/Fpacman.conf)
# add Misc Option ILoveCandy (/etc/pacman.conf)
# add TotalDownload(/etc/pacman.conf)
#
# After finishing this script
# remove XferCommand curl (/etc/pacman.conf)
# change directory to root directory
cd /
clear

# initializing pacman
pacman-key --init
pacman-key --populate archlinux
clear

# update System
pacman -Syu --noconfirmn
pacman -Syu --noconfirmn
rm etc/pacman.conf.pacnew
clear

# installing needed packages
pacman -S --noconfirm openssh apache php php-apache mariadb git tig thunderbird
chown zeyproductions:users /srv/http/ -R
clear

# add httpd and mysqld to auto-start on boot
systemctl enable httpd
systemctl enable mysqld

# ROOT logout and preparations
exit
cd ~
clear
mkdir .ssh
cd .ssh/
ssh-keygen -t rsa -C "ZeyProductions@outlook.com"
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# Things ToDo after script%0D
#%0D
# choose file and passphrase%0D
# add public key to GitHub Account%0D
# run ssh -T git%40github.com%0D
# configure apache and php%0D
