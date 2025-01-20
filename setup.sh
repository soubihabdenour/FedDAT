#!/bin/bash

# setup.sh --> dowloading datasets and pretrained models(FedDAT).

echo "Creating required folders..."

echo "Downloading datasets..."
git clone https://github.com/noagarcia/ArtVQA.git src/data/AQUA
wget -P data/COCO-QA http://www.cs.toronto.edu/~mren/imageqa/data/cocoqa/cocoqa-2015-05-17.zip
unzip data/COCO-QA/cocoqa-2015-05-17.zip -d src/data/COCO-QA
rm src/data/COCO-QA/cocoqa-2015-05-17.zip
wget -P src/data/COCO-QA https://cocodataset.org/#download
wget -P src/data/AbstractScenes https://visualqa.org/download.html
wget -P src/data/VizWiz https://vizwiz.org/tasks-and-datasets/vqa/
wget -P src/data/GQA https://cs.stanford.edu/people/dorarad/gqa/download.html
git clone https://huggingface.co/datasets/visual_genome src/data/VG_100K

echo "Downloading pretrained models..."
wget -P src/modeling/models/ https://storage.googleapis.com/sfr-pcl-data-research/ALBEF/ALBEF.pth
git clone https://huggingface.co/dandelin/vilt-b32-mlm src/modeling/models/vilt-b32-mlm
git clone https://huggingface.co/bert-base-uncased/tree/main src/modeling/models/BERT

echo "Setup complete!"