#/bin/bash
# runs as root on install to install VIBRANT on virome-base

source /root/.bashrc
/opt/miniconda/bin/conda create -y -q --name VIBRANT python=3.9
conda activate VIBRANT
conda install -y -q scikit-learn 
conda install -y -q -c bioconda vibrant

conda clean -a -q
