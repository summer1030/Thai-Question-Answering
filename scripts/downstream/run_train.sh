python train_question_answering_lm_finetuning.py \
  --model_name airesearch/wangchanberta-base-att-spm-uncased \
  --dataset_name chimera_qa \
  --output_dir ~/saved/thai/chimera_qa/wangchanberta-base-att-spm-uncased-finetune-model \
  --log_dir ./logs/wangchanberta-base-att-spm-uncased-finetune-chimera_qa-log \
  --lowercase \
  --pad_on_right \
  --fp16
