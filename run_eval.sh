
python eval_combined.py \
  --model_name bert-base-multilingual-cased\
  --eval_base \
  --dataset_name iapp_wiki_qa_squad\
  --output_dir /home/fangyi/saved/thai/combined/bert-base-multilingual-cased\
  --log_dir ./test/\
  --lowercase \
  --pad_on_right \
  --fp16 \
  --num_train_epochs 7\
  --batch_size 50 \
  --seed 42 \
  --gpu 5\
