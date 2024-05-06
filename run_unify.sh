export CUDA_VISIBLE_DEVICES=2,3
export DATA_ROOT=<coco_2014_path>
export CUDA_LAUNCH_BLOCKING=0
python train_unify.py exp.name=<exp_name> \
cap_generator@model.cap_generator=parallel \
model.detector.checkpoint=<detector path> \
dataset.ref_path=<reference file path> \
exp.ngpus_per_node=2 \
exp.world_size=2 \
optimizer.freezing_xe_epochs=10 \
optimizer.freezing_sc_epochs=0 \
optimizer.finetune_xe_epochs=15 \
optimizer.finetune_sc_epochs=100 \
optimizer.batch_size=8 \
optimizer.num_workers=2 \
optimizer.sc_policy=sc