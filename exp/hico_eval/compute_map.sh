#!/bin/bash
SUBSET="test"
PRED_HOI_DETS_HDF5="/home/tanmay/Data/weakly_supervised_hoi_exp/dets_only/pred_hoi_dets/pred_hoi_dets_${SUBSET}.hdf5"
OUT_DIR="/home/tanmay/Data/weakly_supervised_hoi_exp/dets_only/mAP_eval/$SUBSET"
PROC_DIR="/home/ssd/hico_det_processed_20160224/"

python -m exp.hico_eval.compute_map \
    --pred_hoi_dets_hdf5 $PRED_HOI_DETS_HDF5 \
    --out_dir $OUT_DIR \
    --proc_dir $PROC_DIR \
    --subset $SUBSET