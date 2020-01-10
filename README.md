# Amazon Reviews

In order to correctly execute this project, the following steps should be done:

### 1. Download dataset
For downloading the different datasets it is sufficient to execute [script.sh](dataset/script.sh) as follows:
```bash
./script.sh dataset_links.txt  
```

If the script doesn't work you have to change read, write and execute permissions as follows:
```bash
chmod 700 script.sh
```
### 2. Install required libraries

In order to install the required libraries for running this project the following instruction should be executed:

```bash
pip install -r requirements.txt
```

### 3. Execute notebooks
The project consists of different notebooks that should be executed in sequence:
1. **00_Initial_Data_Cleaning.ipynb** : in this notebook normalization techniques such as lowercasing, emoticon and slang replacements are performed
2. **01_Preprocessing_Representation_Classification.ipynb**: in this notebook preprocessing techniques such as tokenization, spell checking and stemming are performed. The preprocessed dataset is then used for computing the TF-IDF Matrix and training several classification algorithms
3. (Optional) **02_Download_tweets.ipynb**: in this notebook tweets related to CES2020 and replies to a given Samsung tweet are downloaded for later evaluation
4. **03_Tweets_Sentiment_Analysis.ipynb**: the best predictive model built in the notebook *01_Preprocessing_Representation_Classification.ipynb* are used for performing sentiment analysis on downloaded tweets
