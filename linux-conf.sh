#!/bin/bash
################
# created by GG
# for convenient install various software

set -e

echo "=== Updating system ==="
sudo apt update && sudo apt upgrade -y

echo "=== Installing basic tools ==="
sudo apt install -y vim vim-gtk3 neovim cmake
sudo apt install -y git gnuplot-qt terminator gcc g++ curl
sudo apt install -y trash-cli cscope build-essential libopenmpi-dev
sudo apt install -y libarmadillo-dev libeigen3-dev cmatrix libmpfr-dev libgmp-dev

if [ ! -d "/usr/include/Eigen" ]; then
    echo "Linking Eigen..."
    sudo ln -s /usr/include/eigen3/Eigen /usr/include/Eigen
fi

echo "=== vim plugins ==="
./spf13-vim-master/bootstrap.sh

echo "=== Writing aliases and environment ==="

if ! grep -q "# GG custom config" ~/.bashrc; then

cat << 'EOF' >> ~/.bashrc

# ===============================
# GG custom config
# ===============================

# aliases
alias rock='cd ~/project/program/rocket'
alias data='cd ~/data'
alias f='find ./ -iname'
alias c='clear'
alias rm='trash-put'
alias restore='restore-trash'

# PATH
export PATH=$PATH:$HOME/project/program/rocket/build/apps/gfr/pipe
export PATH=$PATH:$HOME/project/program/rocket/build/apps/tools
export PATH=$PATH:$HOME/project/program/rocket/build

EOF

fi

echo "=== Done ==="
source ~/.bashrc
