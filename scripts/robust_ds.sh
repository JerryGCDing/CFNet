#!/usr/bin/env bash
set -x
CUDA_VISIBLE_DEVICES=0 python robust.py --dataset drivingstereo \
    --maxdisp 256 \
    --epochs 10 --lr 0.001  --lrepochs "5:10" \
    --loadckpt "/work/vig/tianyed/CFNet/CFNet/pretrained_checkpoints/sceneflow_pretraining.ckpt" \
    --model cfnet --logdir '/scratch/ding.tian/logs_ddp/CFNet/'
