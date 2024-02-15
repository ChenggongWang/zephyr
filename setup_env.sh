#!/bin/bash 

source  ~/miniconda3/etc/profile.d/conda.sh
conda activate zephyr-1.1
if [ $? -ne 0 ]; then
    echo install zephyr-1.1
    conda env create -f environments/zephyr-1.1.yml
    conda activate zephyr-1.1
    conda install  -y -c conda-forge ipykernel
    python -m ipykernel install --user --name  zephyr-1.1 --display-name "zephyr"
fi