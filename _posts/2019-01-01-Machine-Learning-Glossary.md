---
layout: post
type: blog
title: <center>Machine Learning Glossary</center>
comments: true
mathjax: true
---

## Introduction
The goal of this post is to briefly explain popular (and unpopular) concepts in Machine Learning, the idea for which stemmed from my travails for finding good quality explanations of various Machine Learning concepts on the web. Unlike similar posts on the web, here you'll also find links to good quality resources and to related concepts for more holistic understanding. Hopefully, this post would be helpful to the people who are just starting in Machine Learning as well as to the people who need a quick refresher on some concepts. 

**Didn't find what you were looking for? Consider contributing by creating a pull request on this post [here](https://github.com/rishabhmisra/rishabhmisra.github.io/blob/master/_posts/2019-01-01-Machine-Learning-Glossary.md)**.

## Jump to<a name="top"></a>
[A](#A) . [B](#B) . [C](#C) . [D](#D) . [E](#E) . [F](#F) . [G](#G) . [H](#H) . [I](#I) . [J](#J) . [K](#K) . [L](#L) . [M](#M) . [N](#N) . [O](#O) . [P](#P) . [Q](#Q) . [R](#R) . [S](#S) . [T](#T) . [U](#U) . [V](#V) . [W](#W) . [X](#X) . [Y](#Y) . [Z](#Z)

## A<a name="A"></a>
* **A/B Testing**<a name="ab-testing"></a>: A/B testing, also known as split testing, is a statistical method used to compare two versions of a variable (A and B) to determine which one performs better in a controlled environment. It is widely used in marketing, web design, and product development to test changes to a web page or product against the current design and determine which one produces better results. The goal is to identify the impact of a change and make data-driven decisions.
  * Useful link: [A/B Testing: A Step-by-Step Guide](https://www.optimizely.com/optimization-glossary/ab-testing/)
* **Accuracy**<a name="accuracy"></a>: Accuracy is a metric used to evaluate the performance of a classification model. It is defined as the ratio of the number of correct predictions to the total number of predictions. While accuracy is a straightforward and intuitive measure, it can be misleading in the case of imbalanced datasets, where the majority class dominates the prediction results.
  * Useful link: [Understanding Accuracy in Machine Learning](https://towardsdatascience.com/understanding-accuracy-precision-recall-and-f1-scores-in-machine-learning-models-3db83821445)
* **Activation Function**<a name="activation-function"></a>: Activation functions are mathematical functions used in neural networks to introduce non-linearity into the model. This non-linearity allows the network to learn complex patterns. Common activation functions include the sigmoid function, which maps inputs to values between 0 and 1, the hyperbolic tangent (tanh), which maps inputs to values between -1 and 1, and the Rectified Linear Unit (ReLU), which replaces negative values with zero. Activation functions are crucial in deep learning, particularly in multi-layer networks, as they enable the network to stack layers and learn intricate relationships.
  * Useful link: [Activation Functions in Neural Networks](https://towardsdatascience.com/activation-functions-neural-networks-1cbd9f8d91d6)
* **Active Learning**<a name="active-learning"></a>: Active learning is a machine learning approach where the model is allowed to interactively query a user or some other information source to obtain the desired outputs at new data points. This is particularly useful when labeled data is scarce or expensive to obtain. The model identifies the most informative data points that, when labeled, would most improve its performance.
  * Useful link: [Active Learning Explained](https://towardsdatascience.com/active-learning-7335ff8d3f2e)
* **AdaBoost (Adaptive Boosting)**<a name="adaptive-boosting"></a>: AdaBoost is an ensemble learning technique that combines multiple weak classifiers to form a strong classifier. It works by sequentially training weak learners, typically decision trees, on weighted versions of the data. Misclassified instances in each iteration are given more weight so that subsequent classifiers focus on the harder-to-classify instances. AdaBoost aims to minimize the error rate by focusing on difficult cases and is used for both classification and regression tasks. It is known for its ability to improve the performance of models with lower complexity.
  * Useful link: [Understanding AdaBoost](https://machinelearningmastery.com/boosting-and-adaboost-for-machine-learning/)
* **Alignment**<a name="alignment"></a>: In machine learning, alignment refers to the process of ensuring that the model's objectives are consistent with the user's goals. This is crucial in AI ethics and safety, especially in reinforcement learning where the agent's goals must align with human values and safety constraints. Proper alignment ensures that the AI system behaves in a predictable and beneficial manner.
  * Useful link: [AI Alignment Explained](https://ai-alignment.com/)
* **Anova (Analysis of Variance)**<a name="anova"></a>: ANOVA is a statistical method used to compare the means of three or more groups to understand if at least one of the group means is statistically different from the others. It helps in determining the influence of one or more factors by comparing the means of different samples. ANOVA is used in various fields including biology, economics, and engineering to analyze experimental data.
  * Useful link: [Introduction to ANOVA](https://www.statisticshowto.com/probability-and-statistics/hypothesis-testing/anova/)
* **Artificial Neural Network (ANN)**<a name="ann"></a>: An Artificial Neural Network (ANN) is a computational model inspired by the way biological neural networks in the human brain process information. ANNs consist of interconnected units (neurons) organized in layers: input, hidden, and output layers. Each connection has a weight that adjusts as learning proceeds, based on a training algorithm like backpropagation. ANNs are used in various tasks including image and speech recognition, natural language processing, and game playing. Their ability to model complex non-linear relationships makes them powerful tools in many AI applications.
  * Useful link: [Introduction to Artificial Neural Networks](https://www.ibm.com/cloud/learn/neural-networks)
* **Attention Mechanism**<a name="attention-mechanism"></a>: The attention mechanism is a component used in neural networks, particularly in sequence models like transformers. It allows the model to focus on different parts of the input sequence, enabling it to capture dependencies and relationships more effectively. Attention mechanisms are integral to models like BERT and GPT, which have achieved state-of-the-art results in natural language processing tasks.
  * Useful link: [Attention Mechanisms in Deep Learning](https://machinelearningmastery.com/the-attention-mechanism-from-scratch/)
* **Autoencoder**<a name="autoencoder"></a>: An autoencoder is a type of neural network used for unsupervised learning. It aims to learn a compressed representation (encoding) of the input data and then reconstruct the data from this encoding. An autoencoder consists of an encoder that maps the input to a latent-space representation and a decoder that maps the latent space back to the original input. Autoencoders are used for dimensionality reduction, denoising, and feature learning. Variants like variational autoencoders (VAEs) introduce probabilistic elements to model the data distribution.
  * Useful link: [Autoencoders and Their Applications](https://towardsdatascience.com/deep-inside-autoencoders-7e41f319999f)
* **AUC**<a name="AUC"></a>: AUC is the **A**rea **U**nder the Receiver Operating Characteristic (ROC) **C**urve. ROC curve is obtained by varying the classification threshold of a binary classifier and plotting the true positive rate ([TPR](#TPR)) against the false positive rate ([FPR](#FPR)) at each threshold. It is a popular classification performance metric and has several nice properties like being independent of decision threshold, being robust to the class imbalance in data and so on.
  * Useful links: [Video Explanation of AUC](https://www.youtube.com/watch?v=OAl6eAyP-yo) \| [Probabilistic interpretation of AUC](https://www.alexejgossmann.com/auc/)
  
[Back to Top](#top)

## B<a name="B"></a>
* **Bagging**<a name="Bagging"></a>: Bagging is a procedure that produces several different training sets of the same size with replacement and then trains a machine learning model for each set. The predictions are produced by taking a majority vote in a [classification](#Classification) task and by averaging in a [regression](#Regression) task. Bagging helps in reducing variance from models.
  * Also see: [Random Forest](#RF)
  * Useful links: [Video explanation by Udacity](https://www.youtube.com/watch?v=2Mg8QD0F1dQ) \| [Blog post on Medium](https://medium.com/@harishkandan95/bagging-the-skill-of-bagging-bootstrap-aggregating-83c18dcabdf1)
* **Bias-Variance Trade-off**<a name="bias-variance"></a>: Bias here refers to the difference between the average prediction of a model and target value the model is trying to predict. Variance refers to the variability in the model predictions for a given data point because of its sensitivity to small fluctuations in the training set. If our model is too simple and has very few parameters then it may have high bias and low variance. On the other hand, if our model has a large number of parameters, then it may have high variance and low bias. Thus, we need to find the right/good balance between bias and variance without overfitting and underfitting the data.
  * Useful links: [Video explanation by Trevor Hastie](https://www.youtube.com/watch?v=VusKAosxxyk) \| [Blog post on towardsdatascience](https://towardsdatascience.com/understanding-the-bias-variance-tradeoff-165e6942b229)
* **Bootstrapping**<a name="Bootstrapping"></a>: Bootstrapping is the process of dividing the dataset into multiple subsets, with replacement. Each subset is of the same size of the dataset and the samples are called bootstrap samples. It is used in [bagging](#Bagging).
  * Also see: [Bagging](#Bagging)
  * Useful links: [Bootstrapping wiki](https://en.wikipedia.org/wiki/Bootstrapping_(statistics)) \| [Blog post by machinelearningmastery](https://machinelearningmastery.com/a-gentle-introduction-to-the-bootstrap-method/)

* **Boosting**<a name="Boosting"></a>: Boosting is an ensemble method for improving the model predictions of any given learning algorithm. The idea is to train weak learners sequentially, each trying to correct its predecessor, to build strong learners. A weak learner is defined to be a classifier that is only slightly correlated with the true classification (it can label examples better than random guessing). In contrast, a strong learner is a classifier that is arbitrarily well-correlated with the true classification.
  * Also see: [Bagging](#Bagging)
  * Useful links: [Lecture by Patrick Winston](https://www.youtube.com/watch?v=UHBmv7qCey4) \| [Boosting wiki](https://en.wikipedia.org/wiki/Boosting_(machine_learning))

[Back to Top](#top)

## C<a name="C"></a>
* **Classification**<a name="Classification"></a>: Classification is the problem of identifying to which of a set of categories a new observation belongs, on the basis of a training set of data containing observations whose category membership is known.
  * Also see: [Boosting](#Boosting) \| [Decision Trees](#DT) \| [K-Nearest Neighbor](#KNN) \| [Logistic Regression](#LoR) \| [Random Forest](#RF) \| [Naive Bayes Classifier](#NBC)
  * Useful links: [Classification Wiki](https://en.wikipedia.org/wiki/Statistical_classification)
* **Confusion Matrix**<a name="CM"></a>:
* **Correlation**<a name="Correlation"></a>: Correlation is a statistical technique that can show whether and how strongly pairs of variables are related. [Pearson’s Correlation Coefficient](#PCC) is used to measure the strength of correlation between two variables.
  * Useful links: [Blog post on Correlation](http://statisticsbyjim.com/basics/correlations/) \| [Detailed Explanation of Correlation](https://www.surveysystem.com/correlation.htm)
  * Useful links: [Blog post by surveysystem](https://www.surveysystem.com/correlation.htm)
* **Cross Validation**<a name="CV"></a>:
* **Curse of Dimensionality**<a name="COD"></a>: In a model, as the number of features or dimensions grows, the amount of data needed to make the model generalizable with good performance grows exponentially, which unnecessarily increases storage space and processing time for a modeling algorithm. In this sense, value added by an additional dimension becomes much smaller compared to overhead it adds to the algorithm.
  * Also see: [Dimensionality Reduction](#DR)
  * Useful links: [Video explanation by Trevor Hastie](https://www.youtube.com/watch?v=UvxHOkYQl8g) \| [Elaborate post on Medium](https://medium.freecodecamp.org/the-curse-of-dimensionality-how-we-can-save-big-data-from-itself-d9fa0f872335)
  
[Back to Top](#top)

## D<a name="D"></a>
* **Decision Tree**<a name="DT"></a>: A Decision Tree can be used to visually and explicitly represent decisions and decision making. Each non-leaf node in the tree represents a decision based on one of the features in the dataset. Leaves of the trees represent the final output after a series of decisions; for classification, the output is class membership based on a majority vote from node members and for regression, the output is the average value of node members. The feature used to make a decision at each step is chosen such that the [information gain](#IG) is maximized.
  * Also see: [Boosting](#Boosting) \| [Random Forest](#RF)
  * Useful links: [Video Lecture by Patrick Winston](https://www.youtube.com/watch?v=SXBG3RGr_Rc) \| [Blog post on towardsdatascience](https://towardsdatascience.com/decision-trees-in-machine-learning-641b9c4e8052)
* **Dimensionality Reduction**<a name="DR"></a>: The goal of dimensionality reduction methods is to find a low-dimensional representation of the data that retains as much information as possible. This low-dimensional data representation in turn helps in fighting the [Curse of Dimensionality](#COD).
  * Also see: [Principle Component Analysis](#PCA)
  * Useful links: [Video Explanation by Robert Tibshirani](https://www.youtube.com/watch?v=QlyROnAjnEk) \| [Blog post on towardsdatascience](https://towardsdatascience.com/https-medium-com-abdullatif-h-dimensionality-reduction-for-dummies-part-1-a8c9ec7b7e79)
* **Discriminative Classifiers**<a name="DC"></a>: 
  
[Back to Top](#top)

## E<a name="E"></a>
* **Elastic Net Regression**<a name="Elastic-Net"></a>:
* **Entropy**<a name="Error-Analysis"></a>:
* **Error Analysis**<a name="Error-Analysis"></a>:
* **Expectation Maximization**<a name="EM"></a>: Expectation-Maximization (EM) algorithm is a way to find [maximum likelihood estimates](#MLE) for model parameters when the data is incomplete, has missing data points, or has unobserved (hidden) latent variables. It uses an iterative approach to approximate the maximum likelihood function.
  * Useful links: [Introductory blog post by me](https://rishabhmisra.github.io/Maximum-Likelihood-Estimates-Motivation-For-EM-Algorithm/) \| [Advanced blog post by me](https://rishabhmisra.github.io/Inference-Using-EM-Algorithm/)

[Back to Top](#top)

## F<a name="F"></a>
* **False Positive Rate**<a name="FPR"></a>: The false positive rate is calculated as the ratio between the number of negative events wrongly categorized as positive (false positives) and the total number of actual negative events (regardless of classification).
  * Useful links: [False Positive Rate Wiki](https://en.wikipedia.org/wiki/False_positive_rate)
* **Feature Selection**<a name="Feature-Selection"></a>:
  
[Back to Top](#top)

## G<a name="G"></a>
* **Generative Classifiers**<a name="GC"></a>: 
* **Gradient Descent**<a name="GD"></a>: Gradient Descent is an optimization technique to minimize a loss function by computing the gradients of the loss function with respect to the model's parameters, conditioned on training data. Informally, gradient descent iteratively adjusts parameters and gradually finding the best combination to minimize the loss.
  * Useful links: [Blog post on towardsdatascience](https://towardsdatascience.com/gradient-descent-in-a-nutshell-eaf8c18212f0) \| [Blog post on kdnuggets](https://www.kdnuggets.com/2017/04/simple-understand-gradient-descent-algorithm.html)
* **Grid Search**<a name="Grid-Search"></a>: 

[Back to Top](#top)

## H<a name="H"></a>
* **Hinge Loss**<a name="HL"></a>: Hinge loss is used in context of classification problems and is defined as $l(y) = max(0, 1 - t.y)$, where t is the actual output and y is the classifier's score. Observing the function, we can see that classifier is penalized unless it classifies data points correctly with 100% confidence. This leads to "maximum-margin" classification where each training data point is as far from classifier's decision boundary as possible.
  * Also see: [Support Vector Machines](#SVM)
  * Useful links: [Hinge Loss Wiki](https://en.wikipedia.org/wiki/Hinge_loss)

[Back to Top](#top)

## I<a name="I"></a>
* **Information Gain**<a name="IG"></a>: See [Kullback–Leibler Divergence](#KLD).

[Back to Top](#top)

## J<a name="J"></a>
* **Jaccard Similarity**<a name="JS"></a>: Jaccard Similarity is a statistic used for comparing the similarity and diversity of finite sample sets. It is defined as the size of the intersection divided by the size of the union of the sample sets $\left(J(A, B) = \frac{\|A \cap B\|}{\|A \cup B\|}\right)$. 
  * Also see: [Correlation](#Correlation)
  * Useful links: [Jaccard Similarity Wiki](https://en.wikipedia.org/wiki/Jaccard_index) \| [Explanation with examples](https://www.statisticshowto.datasciencecentral.com/jaccard-index/)

[Back to Top](#top)

## K<a name="K"></a>
* **K-Nearest Neighbor**<a name="KNN"></a>: KNN is essentially a classification technique that finds the ($K$) data points in the training data which are most similar to an unseen data point, and takes a majority vote to make classifications. KNN is a non-parametric method which means that it does not make any assumptions on the underlying data distribution. Performance of KNN methods depends on the data representation and the definition of closeness/similarity.
  * Useful links: [Video explanation by Trevor Hastie](https://www.youtube.com/watch?v=vVj2itVNku4) \| [Blog post on Medium](https://medium.com/@adi.bronshtein/a-quick-introduction-to-k-nearest-neighbors-algorithm-62214cea29c7)
* **Kullback–Leibler Divergence**<a name="KLD"></a>: Kullback–Leibler divergence is a measure of how one probability distribution is different from a second, reference probability distribution. A familiar use case for this is when we replace observed data or complex distributions with a simpler approximating distribution, we can use KL Divergence to measure just how much information we lose when we choose an approximation.
  * Useful links: [Blog post on countbayesie](https://www.countbayesie.com/blog/2017/5/9/kullback-leibler-divergence-explained) \| [Blog post on towardsdatascience](https://towardsdatascience.com/demystifying-kl-divergence-7ebe4317ee68)
  
[Back to Top](#top)

## L<a name="L"></a>
* **Lasso Regression**<a name="Lasso"></a>:
* **Learning Curve**<a name="Error-Analysis"></a>:
* **Linear Discriminant Analysis**<a name="LDA-Dim"></a>:
* **Linear Regression**<a name="LiR"></a>: Linear regression models linear relationship between a scalar dependent variable (usually called target) and several independent variables (usually called predictors). It can be used for forecasting outcomes once the model parameters are learned using supervision from a relevant dataset. Additionally, the learned model parameters can also be used to explain the strength of the relationship between the target and the predictors (a procedure known as linear regression analysis). The model parameters are usually learned by minimizing mean squared error.
  * Useful links: [Video playlist from Stanford](https://www.youtube.com/playlist?list=PL5-da3qGB5IBSSCPANhTgrw82ws7w_or9) \| [Blog post on towardsdatascience](https://towardsdatascience.com/linear-regression-detailed-view-ea73175f6e86)
* **Logistic Regression**<a name="LoR"></a>: Logistic regression models the probability of a certain binary outcome given some predictor variables which influence the outcome. It uses a linear function on predictor variables like linear regression but then transforms it into a probability using the logistic function $\left( \sigma(z) = \frac{1}{1 + e^{-z}} \right)$. The model parameters are usually learned by maximizing likelihood of observed data.
  * Also see: [Maximum Likelihood Estimation](#MLE)
  * Useful links: [Video explanation by Trevor Hastie](https://www.youtube.com/watch?v=31Q5FGRnxt4) \| [Blog post on towardsdatascience](https://towardsdatascience.com/logistic-regression-detailed-overview-46c4da4303bc)

[Back to Top](#top)

## M<a name="M"></a>
* **Maximum Likelihood Estimation**<a name="MLE"></a>: Maximum likelihood estimation is a method of estimating the parameters of a statistical model $\theta$ such that the likelihood function $L(\theta; x)$, which is a function of model parameters given observed data $x$, is maximized. Intuitively, this selects the parameters $\theta$ that make the observed data most probable.
  * Useful links: [Video explanation by Trevor Hastie](https://youtu.be/31Q5FGRnxt4?t=145) \| [Blog post on towardsdatascience](https://towardsdatascience.com/probability-concepts-explained-maximum-likelihood-estimation-c7b4342fdbb1)
* **Model Selection**<a name="MS"></a>: 

[Back to Top](#top)

## N<a name="N"></a>
* **Naive Bayes Classifier**<a name="NBC"></a>: Naive Bayes is a [generative classification](#GC) technique based on [Bayes’ Theorem](https://en.wikipedia.org/wiki/Bayes%27_theorem). It assumes that the presence of a particular feature in a class is unrelated to the presence of any other feature and they all independently contribute towards the class probability.
  * Useful links: [Video Explanation by Trevor Hastie](https://youtu.be/6FiNGTYAOAA?t=275) \| [Blog post on towardsdatascience](https://towardsdatascience.com/naive-bayes-classifier-81d512f50a7c)
* **Neural Network**<a name="NN"></a>: 

[Back to Top](#top)

## O<a name="O"></a>
* **Ordinal Classification**<a name="OC"></a>: Same as [Ordinal Regression](#OR). 
* **Ordinal Regression**<a name="OR"></a>: Ordinal Regression is used for predicting ordinal outcomes, i.e. whose value exists on an arbitrary scale where only the relative ordering between different values is significant, based on various predictor variables. That is why, it is considered as an intermediate problem between [regression](#Regression) and [classification](#Classification). Usually ordinal regression problem is reduced to multiple binary classification problems with the help of threshold parameters such that classifier's score falling within certain threshold correspond to one of the ordinal outcomes.
  * Useful links: [Ordinal Regression Wiki](https://en.wikipedia.org/wiki/Ordinal_regression) \| [Book Chapter](http://www.norusis.com/pdf/ASPC_v13.pdf) \| [Post on applying Ordinal Regression to predict clothing fit](https://rishabhmisra.github.io/Would-This-Clothing-Product-Fit-Me/)

[Back to Top](#top)

## P<a name="P"></a>
* **Pearson’s Correlation Coefficient**<a name="PCC"></a>: Correlation coefficient ($\rho$) ranges from -1 to +1. The closer $\rho$ is to +1 or -1, the more closely the two variables are related and if it is close to 0, the variables have no relation with each other. It is defined as $\rho_{X, Y} = \frac{Cov(X, Y)}{\sigma_{X}.\sigma_{Y}}$.
  * Useful links: [Pearson Correlation Wiki](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient)
* **Precision**<a name="Precision"></a>: If we are given a set of instances, precision is the fraction of relevant instances (those correctly classified into a certain class $C$) among the retrieved instances (those belonging to a certain class $C$). A perfect precision score of 1.0 means that every result retrieved by a search was relevant, but says nothing about whether all relevant documents were retrieved.
  * Also see: [Recall](#Recall)
  * Useful links: [Blog post on towardsdatascience](https://towardsdatascience.com/beyond-accuracy-precision-and-recall-3da06bea9f6c) \| [Precision and Recall Wiki](https://en.wikipedia.org/wiki/Precision_and_recall)
* **Principle Component Analysis**<a name="PCA"></a>: PCA is a statistical procedure that transforms a set of observations of possibly correlated variables into a set of observations with linearly uncorrelated variables called principal components. This transformation is defined in such a way that the first principal component has the largest possible variance and each succeeding component variance in decreasing order with the constraint that it is orthogonal to the preceding components. Utilizing only a few components that capture most of the variance in data helps in fighting the [Curse of Dimensionality](#COD).
  * Also see: [Linear Discriminant Analysis](#LDA-Dim)
  * Useful links: [Video Explanation by Stanford Profs](https://www.youtube.com/watch?v=ipyxSYXgzjQ) \| [Online Lesson by Penn State University](https://onlinecourses.science.psu.edu/stat505/node/49/)
* **Pruning**<a name="Pruning"></a>:
  
[Back to Top](#top)

## Q<a name="Q"></a>
  
[Back to Top](#top)

## R<a name="R"></a>
* **$R^2$**<a name="R-squared"></a>:
* **Random Forest**<a name="RF"></a>: Random Forest is a supervised learning algorithm that builds an ensemble of [Decision Trees](#DT), where each decision tree is allowed to use a fixed number of randomly chosen features. The decision trees are trained using the [Bagging](#Bagging) technique and the output of trees are merged together to get a more accurate and stable prediction.
  * Also see: [Boosting](#Boosting)
  * Useful links: [Blog post on towardsdatascience](https://towardsdatascience.com/the-random-forest-algorithm-d457d499ffcd) \| [Blog post on Medium](https://medium.com/@williamkoehrsen/random-forest-simple-explanation-377895a60d2d)
* **Recall**<a name="Recall"></a>: If we are given a set of instances, recall is the fraction of relevant instances (belonging to a certain class $C$) that have been retrieved (or correctly classified in $C$) over the total number of relevant instances. A recall of 1.0 means that every item from class $C$ was labeled as belonging to class $C$, but does not say anything about other items that were incorrectly labeled as belonging to class $C$.
  * Also see: [Precision](#Precision)
  * Useful links: [Blog post on towardsdatascience](https://towardsdatascience.com/beyond-accuracy-precision-and-recall-3da06bea9f6c) \| [Precision and Recall Wiki](https://en.wikipedia.org/wiki/Precision_and_recall)
* **Regression**<a name="Regression"></a>: Regression is the problem of approximating a mapping function ($f$) from input variables ($X$) to a continuous output variable ($y$), on the basis of a training set of data containing observations in the form of input-output pairs.
  * Also see: [Linear Regression](#LiR)
  * Useful links: [Video Explanation by Trevor Hastie](https://www.youtube.com/watch?v=WjyuiK5taS8)
* **Relative Entropy**<a name="relative-entropy"></a>: See [Kullback–Leibler Divergence](#KLD). 
* **Ridge Regression**<a name="Ridge"></a>:

[Back to Top](#top)

## S<a name="S"></a>
* **Sensitivity**<a name="Sensitivity"></a>: Same as [Recall](#Recall).
* **Specificity**<a name="Specificity"></a>: If we are given a set of instances, specificity measures the proportion of actual negatives (instances not belonging to a particular class) that are correctly identified as such (e.g., the percentage of healthy people who are correctly identified as not having the condition).
  * Useful links: [Specificity Wiki](https://en.wikipedia.org/wiki/Sensitivity_and_specificity#Sensitivity).
* **Standard Score**<a name="SS"></a>: Same as [Z-score](#ZS).
* **Standard Error**<a name="SE"></a>:
* **Stratified Cross Validation**<a name="SCV"></a>:
* **Supervised Learning**<a name="SL"></a>: Supervised learning is a task of learning a function that can map an unseen input to an output as accurately as possible based on the example input-output pairs known as training data.
  * Also see: [Classification](#Classification) \| [Regression](#Regression)
  * Useful links: [Coursera Video Explanation](https://www.coursera.org/lecture/machine-learning/supervised-learning-1VkCb) \| [Supervised Learning Wiki](https://en.wikipedia.org/wiki/Supervised_learning)
* **Support Vector Machine**<a name="SVM"></a>: Support Vector Machine (SVM), in simplest terms, is a classification algorithm which aims to find a decision boundary that separates two classes such that the closest data points from either class are as far as possible. Having a good margin between the two classes contributes to robustness and generalizability of SVM.
  * Also see: [Hinge Loss](#HL)
  * Useful links: [Blog post by Me](https://rishabhmisra.github.io/Introduction-to-Support-Vector-Machines-Motivation-and-Basics/) \| [Video Lecture by Patrick Winston](https://www.youtube.com/watch?v=_PwhiWxHK8o)
  
[Back to Top](#top)

## T<a name="T"></a>
* **T-Test**<a name="TT"></a>: The t-test is one type of inferential statistics that is used to determine whether there is a significant difference between the means of two groups. T-test assumes that the two groups follow a normal distribution and calculates the t-value (extension of [z-score](#ZS)), which is inextricably linked to certain probability value (p-value). P-value denotes the likelihood of two distribution being the same and if the value is below a certain agreed-upon threshold, t-test concludes that the two distributions are sufficiently different.
  * Useful links: [Blog post by University of Connecticut](https://researchbasics.education.uconn.edu/t-test/) \| [Description on investopedia](https://www.investopedia.com/terms/t/t-test.asp)
* **True Positive Rate**<a name="TPR"></a>: Same as [Recall](#Recall).
* **True Negative Rate**<a name="TNR"></a>: Same as [Specificity](#Specificity).
  
[Back to Top](#top)

## U<a name="U"></a>
* **Unsupervised Learning**<a name="UL"></a>: Unsupervised learning is the task of inferring patterns from data without having any reference to known, or labeled, outcomes. It is generally used for discovering the underlying structure of the data.
  * Also see: [Principle Component Analysis](#PCA)
  * Useful links: [Blog post by Hackernoon](https://hackernoon.com/unsupervised-learning-demystified-4060eecedeaf) \| [Coursera Video Explanation](https://www.coursera.org/lecture/machine-learning/unsupervised-learning-olRZo) 
  
[Back to Top](#top)

## V<a name="V"></a>
  
[Back to Top](#top)

## W<a name="W"></a>
  
[Back to Top](#top)

## X<a name="X"></a>
  
[Back to Top](#top)

## Y<a name="Y"></a>
  
[Back to Top](#top)

## Z<a name="Z"></a>
* **Z-score**<a name="ZS"></a>: Z-score is a measure of how many standard deviations below or above the population mean a raw score is, thus giving us a good picture when we want to compare results from a test to a "normal" population.
  * Also see: [T-Test](#TT)
  * Useful links: [Z-score Wiki](https://en.wikipedia.org/wiki/Standard_score) \| [Khan Academy tutorial on Z-score](https://www.khanacademy.org/math/statistics-probability/modeling-distributions-of-data#z-scores)

[Back to Top](#top)

