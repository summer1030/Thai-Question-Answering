
python train_combined.py \
  --model_name wangchanberta-base-att-spm-uncased\
  --dataset_name iapp_thaiqa_xquad\
  --output_dir ~/saved/thai/combined/wangchanberta-base-att-spm-uncased \
  --log_dir ./logs/combined-wangchanberta\
  --lowercase \
  --pad_on_right \
  --fp16 \
  --num_train_epochs 7\
  --batch_size 50\
  --gpu 7 \
  --seed 42 \
