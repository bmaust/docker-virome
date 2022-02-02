#/usr/bin/bash
# runs as root on install to set up base tools on top of fresh OS

apt-get -y update
apt-get -y -q install wget git 
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
bash /tmp/miniconda.sh -b -p /opt/miniconda
rm /tmp/miniconda.sh
export PATH=/opt/miniconda/bin:$PATH
conda init bash
source /root/.bashrc
conda update -y -q -n base -c defaults conda

#cleanup
apt-get clean
rm -rf /var/lib/apt/lists/*

conda clean -a -q
