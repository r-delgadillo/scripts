
echo "=========Apt Update"
sudo apt update

echo "=========Install NPM"
sudo apt install npm

echo "=========Install Nano"
Sudo apt install nano

echo "=========Install NodeJS"
curl -fsSL  https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "=========Install Git"
sudo apt install -y git-all

echo "=========Clone device repo"
git clone https://github.com/r-delgadillo/iot-central-high-availability-clients.git
cd iot-central-high-availability-clients/Node/JavaScript

echo "=========Execute device code"
npm i 
node failover.js "<deviceId>" "<scopeId>" "<key>" "<dps host>"