#/usr/bin/bash
# runs as root on install to set up base tools on top of fresh OS

apt-get -y update
apt-get -y -q install wget git build-essential zlib1g-dev
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash ~/miniconda.sh -b -p /opt/miniconda
source .bashrc
apt-get -y -q install python3-biopython hmmer prodigal python3-pandas python3-matplotlib python3-seaborn python3-numpy ncbi-blast+
apt-get clean
rm -rf /var/lib/apt/lists/*
