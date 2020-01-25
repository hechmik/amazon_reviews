# Train a Sentiment Classifier on Amazon Reviews

The goal of this project is to train several sentiment classifiers on a subset of the Amazon Reviews dataset in order to predict if a given text has a positive or negative sentiment: the best model on efficiency and efficacy is then tested on a corpus made of several labelled and unlabelled tweets.

In order to correctly execute this project, the following steps should be done:
## 1. Download Amazon Reviews dataset

For downloading the different datasets it is sufficient to execute [script.sh](dataset/script.sh) as follows:
```bash
./script.sh dataset_links.txt  
```
If the script doesn't work you have to change read, write and execute permissions as follows:
```bash
chmod 700 script.sh
```
A huge thanks should be made to Jianmo Ni and his colleagues for making the dataset available (citation on the references section) on this [website](https://nijianmo.github.io/amazon/index.html).

## 2. Install required libraries

In order to install the required libraries for running this project the following instruction should be executed:

```bash
pip install -r requirements.txt
```

Windows users may have trouble in installing the **pystemer** library. In order to do proceed with the installation it is required to download the [Build Tools for Visual Studio 2019](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2017): please select the tools related to C++ and proceed with the download (it should be around 4-5 GB).

## 3. Execute notebooks
The project consists of different notebooks:
1. **00_Initial_Data_Cleaning.ipynb** : in this notebook normalization techniques such as lowercasing, emoticon and slang replacements are performed
2. **01_Preprocessing_Representation_Classification.ipynb**: in this notebook preprocessing techniques such as tokenization, spell checking and stemming are performed. The preprocessed dataset is then used for computing the TF-IDF Matrix and training several classification algorithms
3. **02_Download_tweets.ipynb**: in this notebook tweets related to CES2020 and replies to a given Samsung tweet are downloaded for later evaluation
4. **03_Tweets_Sentiment_Analysis.ipynb**: the best predictive model built in the notebook *01_Preprocessing_Representation_Classification.ipynb* is used for performing sentiment analysis on downloaded tweets

Each notebook, apart from [01_Preprocessing_Representation_Classification.ipynb](01_Preprocessing_Representation_Classification.ipynb) can be executed independently thanks to:
* intermediate datasets in the "dataset/" folder
* vectorizer and predictive model in the "joblib_data/" folder.
The reason why [01_Preprocessing_Representation_Classification.ipynb](01_Preprocessing_Representation_Classification.ipynb) can't be executed independently is that the starting dataset, called **preprocessed_dataset.csv**, is larger than GH maximum size, even in a compressed format. 

## 4. Have fun ! 
## References
Justifying recommendations using distantly-labeled reviews and fined-grained aspects

Jianmo Ni, Jiacheng Li, Julian McAuley

Empirical Methods in Natural Language Processing (EMNLP), 2019

[pdf](http://cseweb.ucsd.edu/~jmcauley/pdfs/emnlp19a.pdf)
