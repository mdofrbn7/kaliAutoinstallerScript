sudo apt update && sudo apt dist-upgrade -y
sudo apt install torbrowser-launcher -y
sudo apt-get install gnome-core kali-defaults kali-root-login desktop-base -y
apt-get remove xfce4 xfce4-places-plugin xfce4-goodies -y
sudo apt install firmware-linux -y
sudo apt-get install pidgin pidgin-otr pidgin-plugin-pack -y
sudo apt install -y qemu-kvm libvirt0 virt-manager bridge-utils -y
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- \
  | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $( lsb_release -cs ) contrib" \
  | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install -y dkms
sudo apt install -y virtualbox virtualbox-ext-pack
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
sudo apt-get install python g++ make checkinstall fakeroot -y
src=$(mktemp -d) && cd $src
wget -N http://nodejs.org/dist/node-latest.tar.gz
tar xzvf node-latest.tar.gz && cd node-v*
./configure
sudo fakeroot checkinstall -y --install=no --pkgversion $(echo $(pwd) | sed -n -re's/.+node-v(.+)$/\1/p') make -j$(($(nproc)+1)) install
sudo dpkg -i node_*
sudo apt install curl gpg software-properties-common apt-transport-https -y
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code -y
sudo apt-get install git -y
sudo apt install -y default-jdk
sudo apt-get install python3.6 -y
sudo apt -y install lsb-release apt-transport-https ca-certificates
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ buster main" | sudo tee /etc/apt/sources.list.d/php.list

sudo apt -y install php7.4

sudo apt-get install php7.4-{cli,json,imap,bcmath,bz2,intl,gd,mbstring,mysql,zip} -y

sudo wget --no-check-certificate https://raw.githubusercontent.com/fahadahammed/linux-bangla-fonts/master/dist/lbfi -O lbfi;sudo chmod +x lbfi;./lbfi

