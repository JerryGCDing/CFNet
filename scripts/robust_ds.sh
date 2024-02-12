#!/usr/bin/env bash

module load anaconda3/2022.05 cuda/11.1 gcc/10.1.0
source activate sense_release

CUDA_VISIBLE_DEVICES=0,1,2,3 python /work/vig/tianyed/CFNet/CFNet/ds_robust.py --dataset 'drivingstereo' \
    --maxdisp 256 \
    --batch_siz 8 \
    --epochs 5 --lr 0.001  --lrepochs "5:10" \
    --loadckpt "/work/vig/tianyed/CFNet/CFNet/pretrained_checkpoints/sceneflow_pretraining.ckpt" \
    --model cfnet --logdir '/scratch/ding.tian/logs_ddp/CFNet/'
