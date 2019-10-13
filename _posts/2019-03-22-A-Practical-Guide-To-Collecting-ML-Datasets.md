---
layout: post
type: blog
title: <center>A practical guide to collecting ML datasets</center>
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

<code>_Fun fact: These datasets collectively have over 500+ upvotes, 17000+ downloads, and 90+ kernels on Kaggle._</code>

## Phase 1 — Searching for data 🔎

<code> \_ This phase would require patience as you might have to search the web extensively. But don’t you worry. Here I will provide certain pointers based on my experience that could make your search more systematic and efficient. \_</code>

If you are looking to collect and build a good-quality dataset, you could be in one of two situations:
* You are looking for a dataset that would allow you to address a specific problem. **Problem known**
* You are looking for a dataset that could be used to solve interesting problems. **Problem unknown**

Based on the situation you are in, the following pointers would be helpful.

### Problem known

The clothing fit and sarcasm detection datasets were collected to address specific problems in mind. Thus, they make good candidates for explaining this type of situation.

The following steps might be helpful in searching for a dataset in this type of situation:

1. **Break down the problem to identify data signals essential to address the problem**: This is the most important step. In the case of size recommendation problem where we want to recommend clothing sizes to customers, data signals that are essential would be the `user id`, `product id`, `size purchased`, and `fit feedback` of the customer for that purchase. Other signals like product category, customer measurements etc. would be good to have but are not essential.

2. **Search the web for a source that provides all the required signals**: Here your googling skills would come in handy. Use that to explore several websites and see whether they provide essential data signals. For the clothing fit dataset, sites like [Zappos](https://www.zappos.com/p/asics-gel-nimbus-20-indigo-blue-indigo-blue-opal-green/product/8971178/color/719605) seem promising but are missing the essential `size purchased` signal, whereas [ModCloth](https://www.modcloth.com/shop/tops/charter-school-cardigan-in-black/34931.html) does provide all the essential data signals (though needing some additional tweaking; more on this later).

3. **If you can’t find a single source, see if the data from multiple sources could be combined to construct the dataset**: The sarcasm detection dataset is a perfect example of combining data from multiple sources to build a complete and good-quality dataset. Since we know the problem (detect sarcasm) and type of data we want (sarcastic and non-sarcastic texts), we don’t necessarily have to stick to one source to provide all the information. I identified [TheOnion](https://www.theonion.com/) as a source to get sarcastic text and for non-sarcastic text, I chose a real news reporting website [HuffPost](https://www.huffpost.com).

4. **See if the source contains enough historical data that would allow you to construct a sufficiently large dataset**: This is also a very important point to consider before you start collecting the data. If a site does not contain enough data, for example, an online retailer does not have a large collection of products to offer or if a news website does not contain archive to old stories, it would not benefit you much even if you scrape the data. So, look for a source that provides you enough data to construct a sufficiently large dataset.

5. **How can you improve the dataset? Can you combine data from other sources to make it more interesting?**: This is an open-ended pointer. Once you check all the aforementioned boxes, see how can you further improve the dataset. Think about if you can combine more information on some attributes through different sources that might help people build informative features for their models.

