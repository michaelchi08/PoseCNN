#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=$1

time ./tools/test_images.py --gpu 0 \
  --network vgg16_convs \
  --model output_napoli/lov/lov_011_banana_train/vgg16_fcn_color_single_frame_2d_pose_add_lov_banana_iter_160000.ckpt \
  --imdb lov_single_011_banana_train \
  --cfg experiments/cfgs/lov_color_banana.yml \
  --cad data/LOV/models.txt \
  --pose data/LOV/poses.txt
