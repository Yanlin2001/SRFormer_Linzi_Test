#!/bin/bash
#SBATCH --gpus=1
module load anaconda/2020.11   cuda/11.8   cmake/3.22.0   gcc/9.3
#source activate scz0rbl
#conda activate srtest
source activate srtnew
#git clone https://github.com/Yanlin2001/SRFormer_Linzi_Test.git
cd SRFormer_Linzi_Test
#pip install -r requirements.txt
#python setup.py develop
python basicsr/train.py -opt options/train/SRFormer/train_SRFormer_SRx4_scratch.yml
