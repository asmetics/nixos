### Important for configuring

*Do not work in /etc/nixos, do this*

mkdir -p ~/repos
cd ~/repos
cd nixos

sudo rm -rf /etc/nixos
sudo ln -s ~/repos/nixos /etc/nixos
