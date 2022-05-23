# Thai-Question-Answering

This work is for extractive question answering for the Thai language. 
It is built based on [thai2transformers](https://github.com/vistec-AI/thai2transformers).

The environment is described in requirement.txt

## Datasets

Three extractive question answeirng datasets for the Thai language.
```
 - xquad-th (the split version on https://huggingface.co/datasets/zhufy/xquad_split)
 - thaiqa (https://huggingface.co/datasets/thaiqa_squad)
 - iapp_wiki_qa_squad (https://huggingface.co/datasets/iapp_wiki_qa_squad)
 ```

Can combine the training data from the three datasets for training.
The script for combining the dataset is
```
./utils/combine_datasets.py
```
