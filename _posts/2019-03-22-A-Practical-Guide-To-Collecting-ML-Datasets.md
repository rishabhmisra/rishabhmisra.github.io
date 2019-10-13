---
layout: post
type: blog
title: <center>Inference using EM algorithm</center>
comments: true
mathjax: true
---

## Introduction
Data is at the core of any Machine Learning problem. All the strides being made using Machine Learning these days would not be possible if not for access to relevant data. Having said that, most of the Machine Learning enthusiasts these days focus on acquiring methodological knowledge (which is good to start with, but not beyond).

<mark>Upon reaching a certain level of comfort with methodologies, tackling only the problems for which a dataset is already available is limiting in terms of potential.</mark>

Luckily, we live in a time where an abundance of data is available on the web; all we need are the skills to identify and extract meaningful datasets. So let’s get started to see what it takes to identify, scrape and build a good-quality Machine Learning dataset.

<mark>The focus of this post is to explain how good-quality datasets can be constructed through real examples and code snippets.</mark>

Throughout the article, I will refer to three high-quality datasets I collected, namely Clothing Fit Dataset for Size Recommendation, News Category Dataset, and Sarcasm Detection dataset to explain various points. To set the stage, following I briefly explain what each of the datasets is about. You can find their detailed description of their linked Kaggle profile.

### [Clothing Fit Dataset for Size Recommendation](https://www.kaggle.com/rmisra/clothing-fit-dataset-for-size-recommendation) 👚
Clothing size recommendation and fit prediction are critical to improve customers’ shopping experiences and to reduce product return rates. The dataset collected from ModCloth contains fit feedback from customers on their purchased clothing items and other side information like ratings, reviews, category information, customer measurements and so on. This dataset is useful in identifying key features that determine the fit of a clothing product on a customer.

### [News Category Dataset](https://www.kaggle.com/rmisra/news-category-dataset) 📑
This dataset contains around 200,000 news headlines from the year 2012 to 2018 obtained from HuffPost. It contains details like news category, news headlines, a short description of news stories, publication date and so on. The dataset could be used for multiple purposes like for identifying tags of untracked news articles, for identifying the type of language used in different news categories and so on.

### [Sarcasm Detection dataset](https://www.kaggle.com/rmisra/news-headlines-dataset-for-sarcasm-detection) 😏
Past studies in Sarcasm Detection mostly make use of Twitter datasets collected using hashtag based supervision but such datasets are noisy in terms of labels and language. To overcome these limitations, this dataset is collected from two news websites: TheOnion and HuffPost. TheOnion produces sarcastic versions of current events whereas HuffPost reports real and non-sarcastic news.
