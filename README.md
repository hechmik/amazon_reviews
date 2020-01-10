# Amazon Reviews

In order to correctly execute this project, the following steps should be done:


### 1. Install required libraries

In order to install the required libraries for running this project the following instruction should be executed:

```bash
pip install -r requirements.txt
```

Windows users may have trouble in installing the **pystemer** library. In order to do proceed with the installation it is required to download the [Build Tools for Visual Studio 2019](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2017): please select the tools related to C++ and proceed with the download (it should be around 4-5 GB).

### 2. Execute notebooks
The project consists of different notebooks:
1. **00_Initial_Data_Cleaning.ipynb** : in this notebook normalization techniques such as lowercasing, emoticon and slang replacements are performed
2. **01_Preprocessing_Representation_Classification.ipynb**: in this notebook preprocessing techniques such as tokenization, spell checking and stemming are performed. The preprocessed dataset is then used for computing the TF-IDF Matrix and training several classification algorithms
3. (Optional) **02_Download_tweets.ipynb**: in this notebook tweets related to CES2020 and replies to a given Samsung tweet are downloaded for later evaluation
4. **03_Tweets_Sentiment_Analysis.ipynb**: the best predictive model built in the notebook *01_Preprocessing_Representation_Classification.ipynb* are used for performing sentiment analysis on downloaded tweets

Each notebook can be executed independtly thanks to intermediate dataset in the "dataset/" folder, vectorizer and predictive model in the "joblib_data/" folder.
