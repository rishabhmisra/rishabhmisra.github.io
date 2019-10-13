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

<code>Fun fact: These datasets collectively have over 500+ upvotes, 17000+ downloads, and 90+ kernels on Kaggle.</code>

## Phase 1 — Searching for data 🔎

<code> This phase would require patience as you might have to search the web extensively. But don’t you worry. Here I will provide certain pointers based on my experience that could make your search more systematic and efficient.</code>

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

### Problem unknown

The news category dataset is a good candidate to explain these type of situations as it was not collected keeping a specific problem in mind. Not knowing what we are looking for does complicate the situation a little, however, keeping note of the following points as you surf the web could help you identify your next interesting dataset:

1. **Does the source contain any data signal worth estimating/predicting?**: While analyzing a website, think if the website provides any interesting information that would be worth estimating. It could be something straightforward or something relating to the type of information present on the website.
For the straightforward case, I noticed on HuffPost that each story is tagged with categories (like sports, politics etc.) that I thought would be an interesting data signal to predict. For the type-of-information case, I treated news headlines from HuffPost as non-sarcastic sentences (given they were reporting real news) in the Sarcasm Detection dataset and headlines from TheOnion as sarcastic sentences.

2. **Does the source contain enough metadata that will be useful in predicting the outcome?**: Once you decide on a data signal worth predicting, you will have to ensure that the site provides you enough side information that could be used to predict that data signal, and if not, can you use some other source to bring that information in the dataset. For example, predicting the price of a product on an e-commerce platform might not go very well if we don’t have metadata about the item. Sufficient amount of side information is needed to make the dataset a good one.

3. **Does the site contain enough historical data that would allow you to construct a sufficiently large dataset?**: This is the same as point 4 in **Problem Known** section.

4. **Does predicting the outcome has any important implications or applications?**: A sign of good quality dataset is also that it could be used to solve interesting and practical problems, or has the capability of providing interesting insights into some phenomenon. For example, a classifier built on news category dataset could help in identifying the writing style of any prose (whether it is political, humorous, etc.), help in tagging untracked news articles, provide insights into how the writing style differs for different types of news and so on.

5. **Cross-check to see if such type of data is already available. If yes, does your dataset adds anything over the existing datasets?**: This step is important so that you know you are contributing something unique and not something which already exists which might not be a very good use of time. Simple searches on Google would be enough from this step.

6. **How can you improve the dataset? Can you combine data from other sources to make it more interesting?**: This is the same as point 5 in **Problem Known** section.

## Phase 2 — Extracting the data ⚒

Once we have narrowed down the source(s), we can start extracting the data.

<mark>Before scraping the data, carefully read websites’ Terms and Conditions to ensure you are not violating any rules by scraping the data and publicly distributing it.</mark>

Since it would be very difficult to explain this section without taking an actual example, I will refer to the script I used in scraping data from ModCloth as an example to make various points.

### Get to know the Site’s Structure

The first thing to do is to familiarize yourself with the structure of the site.

<center>
<img src="/images/collecting-datasets-guide/1.png" width="85%" height ="500"/>
</center>

On [ModCloth](https://www.modcloth.com/), we see that on the top we have various clothing categories: Dresses, Tops, Bottoms and so on. If we click on one of the categories, like Tops in the above image, we see that the products are shown in a grid format. The page in the picture is showing 100 products and the rest of the products are accessible through the page scroller near the top right.

Next, we click on one of the products to observe what the page for each product looks like. At the top, we have item related metadata and at the bottom, we have product reviews.

<center>
<img src="/images/collecting-datasets-guide/2.png" width="85%" height ="500"/>
</center>

<center>
<img src="/images/collecting-datasets-guide/3.png" width="85%" height ="500"/>
</center>

We notice that each page contains up to 10 reviews. If there are more than 10 reviews, we see a `NEXT` button at the bottom right.

<center>
<img src="/images/collecting-datasets-guide/4.png" width="85%" height ="100"/>
</center>

When we click the `NEXT` button, we are presented with the next 10 reviews. However, you might notice that the link does not change, which means there’s no other way to access the subsequent reviews apart from clicking the `NEXT` button. We also see that in subsequent review pages, a `PREVIOUS` button also appears. We will see later on why noticing such things is important for data extraction.

<center>
<img src="/images/collecting-datasets-guide/5.png" width="85%" height ="100"/>
</center>

We now have a fairly good idea about the site’s structure. To reiterate, our goal is to extract reviews for each product from each category.

### Extracting Product Links

Since there is a limited number of categories, it’s not necessary to write a script to extract their links; they could be collected manually. In this section, we will focus on extracting product links from one of the clothing categories: Tops.

<code>To understand the basics of data extraction, please go through following blog.</code>
[How to scrape websites with Python and BeautifulSoup](https://medium.freecodecamp.org/how-to-scrape-websites-with-python-and-beautifulsoup-5946935d93fe?source=post_page-----476f1ecf5e35----------------------)

We will also be making use of _Selenium_, a Web Browser Automation Tool, for data extraction.

<code>To get the basic background on how the Selenium works, please go through following blog.</code>
[Introduction to Web Scraping using Selenium](https://medium.com/the-andela-way/introduction-to-web-scraping-using-selenium-7ec377a8cf72)

So, let’s get started:
* Till now, we know that within each category, products are presented in groups of 100 and we could have a page scroller to access all the products. To start with, we need to see how the links for various pages vary. As it is usually the case, the following images suggest that links follow a pattern.

<center>
<img src="/images/collecting-datasets-guide/6.png" width="85%" height ="100"/>
</center>
<center> Page 1 of Tops category </center>

<center>
<img src="/images/collecting-datasets-guide/7.png" width="85%" height ="100"/>
</center>
<center> Page 2 of Tops category </center>

<center>
<img src="/images/collecting-datasets-guide/8.png" width="85%" height ="100"/>
</center>
<center> Page 3 of Tops category </center>

* Then for each page, we need to extract the links to individual item’s page. To get that, go to one of the items, right click on it and go to “inspect” option. Scroll a bit to identify the `<a>` element that contains the item link and note its CSS class. In the following image, we see that in our case the class is `thumb-link`. Most likely, all the other product links would also be using the same class for styling (just verify it once).

<center>
<img src="/images/collecting-datasets-guide/9.png" width="85%" height ="500"/>
</center>

* With all this information, we can write the following code to extract links to all the products in the Tops category:

<script src="https://gist.github.com/rishabhmisra/16ef6ceeeea70956a8784230d560bbe3.js"></script>

<code> As you would have noticed, the script purposefully has wait time to ensure we are not sending too many frequent requests to the site. Usually, 1 request per second is good, but given that ModCloth is a small site (maybe not as scaled as Amazon) we can put a longer wait time. You can use your judgement in this regard.</code>

### Extracting Reviews

Now that we have a link for each product, we can go deeper and extract reviews for each product. To start with, we will inspect what HTML corresponding to each review look like. Again, right click on a review and click "inspect".

<center>
<img src="/images/collecting-datasets-guide/10.png" width="85%" height ="500"/>
</center>

We notice that each review is contained in an `<article>` element. Let’s explore what is inside one of the `<article>` element. We can do this by clicking the arrow beside the element. As we hover on various elements inside the `<article>` tag, the corresponding view would be highlighted on the webpage.

<center>
<img src="/images/collecting-datasets-guide/11.png" width="85%" height ="500"/>
</center>

For example, in the above image, a `<section>` element with a class named `pr-rd-content-block pr-accordion pr-accordion-collapsed` corresponds to fit feedback and customer measurements related data. Once you have explored all the different elements inside `<article>` tag, refer the following script to see how we can extract all the pertinent details.

<script src="https://gist.github.com/rishabhmisra/46bb556228c545297009e23e80f597ba.js"></script>

Few things to note:
* We have done exception handling in many places. These were added incrementally as and when I faced issues while running the script.
* Lines `30-97` are responsible for extracting as well as parsing the data of interest into a dictionary format. Usually, people prefer storing the extracted data locally and parsing it offline, however, I preferred doing it on the fly due to storage space constraints on my laptop.
* Selenium comes in handy in lines `99-119`. Since the URL does not change across different review pages, the only way to go navigate is to simulate a button click. We have utilized the xpath of NEXT button to do the same.

<code> XPath can be used to navigate through elements and attributes in an XML document. To identify the "xpath" of an element, go to inspect screen, right click on the HTML code and copy the "xpath" as shown in the image below. </code>


<center>
<img src="/images/collecting-datasets-guide/12.png" width="85%" height ="300"/>
</center>

This completes the data extraction and parsing process after which a record in our data would look as follows:

```
{ 
  'bra size': '42',
  'category': 'tops',
  'cup size': 'd',
  'fit': 'slightly small',
  'height': '5ft 6in',
  'hips': '46.0',
  'item_id': '149377',
  'length': 'just right',
  'original_size': 'xxxl',
  'product_sizes': {'l', 'm', 's', 'xl', 'xs', 'xxl', 'xxxl'},
  'quality': '4rated 4 out of 5 stars',
  'review_summary': 'I love love love this shi',
  'review_text': "I love love love this shirt. I ordered up because it looked a little more fitted in the picture and I'm glad I did; if I had ordered my normal size it would probably have been snugger than I prefer. The material is good qualityit's semithick. And the design is just so hilariously cute! I'm going to see if this brand has other tees and order more.",
  'shoe size': '8.00',
  'shoe width': 'average',
  'size': 16,
  'user_name': 'erinmbundren'
}
```

By the looks of it, our job here is done. However, there are still a few steps left to build our final dataset.

## Phase 3 — Building the dataset 🏗

The quality of data we have so far might have some scope of improvements along the following dimensions:

### Cleaning
Data extracted so far might have some records which are missing the essential data signals. They can be safely discarded. For example:
* There are many reviews on ModCloth that don’t contain fit feedback or the product size purchased information. Although we had discarded reviews that did not contain any side information as part of lines `64-66`, there could still be some reviews where some side information is present but that does not contain some essential data signals.

* If you would have noticed, reviewers’ information on ModCloth is not associated with any unique id, unlike items. This presents another challenge for us since `user id` is an essential data signal for us. To tackle this challenge, we can concatenate the reviewer’s name with their measurements to form a unique string. We can mandate that at least 3 measurement fields should be present to reduce the noise in the dataset due to different reviewers getting the same id. All the records where such information was not present can then be safely removed.

* Furthermore, there were few records where the reported `size purchased` was not present in the catalog sizes of the product (could be reporting errors). We also discard such records.

### Anonymizing
It is always a good idea to anonymize user and item details in order to protect privacy. Since we have sensitive attributes like body measurements in the ModCloth dataset, we can randomly generate `user id` and `item id`. This becomes even more essential if we scrape information which is not public.

### Standardizing
There might be some attributes present in the data that might not have the same meaning across all the records. We need to use our intuition (or some baseline) in such cases to standardize the attributes across the dataset. For example, different products on ModCloth might have different sizing convention (some are present on the US scale, some in the UK, Jeans have totally different sizing conventions and so on). Thus the dataset is essentially unusable until we standardize the sizes across all the records.
One way to handle this challenge is by utilizing the sizing chart present on ModCloth, which maps sizes from different conventions to something that could be used to create a standard scale which preserves the order. However, there were still some unknown sizes present in some products. We can either use our intuition to convert them into a standard scale (for example `xxxs` might not be present in the sizing chart but we can tell it would definitely be smaller than `xs`) or discard all the reviews for contentious products.

### Structuring
Once we are sure that we have done all the pre-processing to get the data into good shape, the final thing left to do is to structure the data in one of the common formats like CSV, JSON etc. so that it is easily readable and importable by the people interested in using the dataset.

## Concluding Remarks 🔚

Once we have gone through all the aforementioned steps, a record in our data might look as follows:

```
{
   "item_id": "507565",
   "size": 12,
   "quality": 5,
   "cup size": "c",
   "hips": "44.0",
   "bra size": "42",
   "category": "tops",
   "length": "slightly long",
   "height": "5ft 6in",
   "review_summary": "I love this shirt so much",
   "review_text": "I love this shirt so much I bought 2. It is quite long in the back but it goes with everything and can easily be dressed up or dressed down.",
   "fit": "fit",
   "user_id": "56291"
}
```

This seems cleaner and more structured. We did it! 🙌

This could be a lot to digest but the best way to absorb the content would be to apply these steps in your next dataset quest. While doing so, keep in mind the following main takeaways from this article:

<center>
<img src="/images/collecting-datasets-guide/13.png" width="85%" height ="600"/>
</center>

I will continue to refine this article as I collect more datasets and come across different scenarios. Meanwhile, if you come up with (or already have) few tips and tricks of your own, let me know in comments and I’ll try to incorporate them in this article. Cheers! 🥂
