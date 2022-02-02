#!/bin/bash
source /root/.bashrc
conda activate VIBRANT
export VIBRANT_DATA_PATH=/opt/miniconda/envs/VIBRANT/share/vibrant-1.0.1
echo "Launching VIBRANT's download-db.sh in $VIBRANT_DATA_PATH inside ($CONDA_DEFAULT_ENV)"
echo "This may take >10 mins depending on network speed."
download-db.sh
