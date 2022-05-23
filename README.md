# Extractive Question-Answering for the Thai language

This work is built based on [thai2transformers](https://github.com/vistec-AI/thai2transformers).

The environment is described in requirement.txt

## Datasets

Three extractive question answeirng datasets for the Thai language.
```
 - xquad-th (the split version on https://huggingface.co/datasets/zhufy/xquad_split)
 - thaiqa (https://huggingface.co/datasets/thaiqa_squad)
 - iapp_wiki_qa_squad (https://huggingface.co/datasets/iapp_wiki_qa_squad)
 ```

Combine the training data from the three datasets for training.
The script for combining the dataset is
```
./utils/combine_datasets.py
```
## Models

Include both `mono-` and `multi-` lingual language models that can work for the Thai language.

### Monolingual language model

[WangchenBERTa](https://arxiv.org/abs/2101.09635): we use the [wangchanberta-base-att-spm-uncased](https://huggingface.co/airesearch/wangchanberta-base-att-spm-uncased) released by the VISTEC-depa AI Research Institute of Thailand on HuggingFace.

### Multilingual language models

- [Multilingual BERT](http://arxiv.org/abs/1810.04805): we use the [bert-base-multilingual-cased](https://huggingface.co/bert-base-multilingual-cased) released on HuggingFace.
- [XLM-Roberta](http://arxiv.org/abs/1911.02116): we use the [xlm-roberta-base](https://huggingface.co/xlm-roberta-base) released on HuggingFace.


## Fine-tune Models

Run the script `bash run_train.sh` to fine-tune the model.

### Monolingual Language Model 






The parameters can be set are as follows,

```
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

```

`train_base.py` Train baseline models with single dataset

`train_combined.py` Train baseline model with the combined dataset

## Evaluate Modles

Run the script `bash run_eval.sh` to evaluate the model. 

The parameters can be set are as follows,

```
python eval_combined.py \
  --model_name bert-base-multilingual-cased\
  --eval_base \
  --dataset_name iapp_wiki_qa_squad\
  --output_dir ~/saved/thai/combined/bert-base-multilingual-cased\
  --log_dir ./test/\
  --lowercase \
  --pad_on_right \
  --fp16 \
  --num_train_epochs 7\
  --batch_size 50 \
  --seed 42 \
  --gpu 5\

```

`eval.py` Evaluate the base models

`eval_combined.py` Evaluate the models trained with the combined dataset

`eval_huggingface` Evaluate a model released on HuggingFace
