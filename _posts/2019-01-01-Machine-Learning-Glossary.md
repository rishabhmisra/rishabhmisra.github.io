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
* **Clustering**<a name="clustering"></a>: Clustering is an unsupervised learning technique used to group similar data points together based on their features. The goal is to partition the data into clusters where points within each cluster are more similar to each other than to those in other clusters. Common clustering algorithms include k-means, hierarchical clustering, and DBSCAN. Clustering is widely used in various applications such as market segmentation, image segmentation, and anomaly detection.
  * Useful links: [Introduction to Clustering](https://scikit-learn.org/stable/modules/clustering.html)
* **Confusion Matrix**<a name="confusion-matrix"></a>: A confusion matrix is a table used to evaluate the performance of a classification model. It compares the actual target values with those predicted by the model. The matrix includes four key metrics: true positives (TP), false positives (FP), true negatives (TN), and false negatives (FN). From these, other metrics such as accuracy, precision, recall, and F1-score can be derived. The confusion matrix provides a detailed breakdown of the model’s performance.
  * Useful links: [Understanding Confusion Matrix](https://www.dataschool.io/simple-guide-to-confusion-matrix-terminology/)
* **Convolutional Neural Network (CNN)**<a name="cnn"></a>: A Convolutional Neural Network (CNN) is a deep learning algorithm commonly used for image recognition and processing tasks. CNNs are designed to automatically and adaptively learn spatial hierarchies of features through convolutional layers, pooling layers, and fully connected layers. The convolutional layers apply filters to the input image, capturing local patterns such as edges, textures, and shapes. CNNs are widely used in computer vision applications, including image classification, object detection, and segmentation.
  * Useful links: [Understanding Convolutional Neural Networks](https://towardsdatascience.com/a-comprehensive-introduction-to-different-types-of-convolutions-in-deep-learning-4f9254ff7dee)
* **Correlation**<a name="Correlation"></a>: Correlation is a statistical technique that can show whether and how strongly pairs of variables are related. [Pearson’s Correlation Coefficient](#PCC) is used to measure the strength of correlation between two variables.
  * Useful links: [Blog post on Correlation](http://statisticsbyjim.com/basics/correlations/) \| [Detailed Explanation of Correlation](https://www.surveysystem.com/correlation.htm)
  * Useful links: [Blog post by surveysystem](https://www.surveysystem.com/correlation.htm)
* **Cross Validation**<a name="cross-validation"></a>: Cross-validation is a statistical technique used to assess the generalization performance of a machine learning model. The most common form is k-fold cross-validation, where the data is divided into k subsets (folds). The model is trained on k-1 folds and tested on the remaining fold. This process is repeated k times, with each fold used exactly once as the test set. Cross-validation helps in selecting models and tuning hyperparameters by providing a more reliable estimate of model performance.
  * Useful links: [Understanding Cross-Validation](https://towardsdatascience.com/cross-validation-explained-evaluating-estimator-performance-e51e5430ff85)
* **Curse of Dimensionality**<a name="COD"></a>: In a model, as the number of features or dimensions grows, the amount of data needed to make the model generalizable with good performance grows exponentially, which unnecessarily increases storage space and processing time for a modeling algorithm. In this sense, value added by an additional dimension becomes much smaller compared to the overhead it adds to the algorithm.
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
* **Elastic Net Regression**<a name="elastic-net-regression"></a>: Elastic Net Regression is a regularized regression technique that linearly combines the penalties of the L1 (Lasso) and L2 (Ridge) regularization methods. It is particularly useful when there are multiple correlated features, as it can select groups of correlated variables. The elastic net penalty encourages sparsity (like Lasso) and also includes a ridge regression penalty to maintain stability. This approach balances between the feature selection property of Lasso and the regularization strength of Ridge Regression.
  * Useful links: [Elastic Net Regression Explained](https://scikit-learn.org/stable/modules/linear_model.html#elastic-net)
* **Entropy**<a name="entropy"></a>: In the context of machine learning, entropy is a measure of the uncertainty or impurity in a dataset. It quantifies the amount of disorder or randomness. In decision trees, entropy is used to decide the best split at each node by measuring the impurity before and after the split. Lower entropy indicates higher purity, meaning the data is more homogeneous. Entropy is a fundamental concept in information theory and is used to build efficient models by minimizing uncertainty.
  * Useful links: [Understanding Entropy in Machine Learning](https://www.magicslides.app/blog/what-is-entropy-in-machine-learning)
* **Ensemble Learning**<a name="ensemble-learning"></a>: Ensemble learning is a technique that combines multiple individual models (often called base learners or weak learners) to create a stronger overall model. The primary goal is to improve the predictive performance by reducing variance, bias, or improving accuracy. Popular ensemble methods include bagging (e.g., Random Forest), boosting (e.g., AdaBoost, Gradient Boosting), and stacking. Ensemble learning is widely used in both classification and regression tasks due to its ability to enhance model robustness and accuracy.
  * Useful links: [Ensemble Learning Methods](https://machinelearningmastery.com/tour-of-ensemble-learning-algorithms/)
* **Empirical Risk Minimization (ERM)**<a name="empirical-risk-minimization"></a>: Empirical Risk Minimization (ERM) is a principle in statistical learning theory where the goal is to minimize the empirical risk, i.e., the average loss over the training sample. The empirical risk is calculated based on a chosen loss function that quantifies the error between predicted and actual values. ERM is fundamental to the training process of machine learning models, guiding the optimization of model parameters to fit the training data.
  * Useful links: [Empirical Risk Minimization Explained](https://mlweb.loria.fr/book/en/erm.html#:~:text=The%20Empirical%20Risk%20Minimization%20(ERM,alternative%20name%20of%20empirical%20risk.)
* **Epoch**<a name="epoch"></a>: An epoch in machine learning refers to one complete pass of the training dataset through the algorithm during the training process. Training a model typically involves multiple epochs, as each pass helps the model learn the underlying patterns in the data. After each epoch, the model’s parameters are updated to minimize the loss function. The number of epochs is a hyperparameter that needs to be tuned to ensure the model neither underfits nor overfits the training data.
  * Useful links: [Understanding Epochs in Machine Learning](https://www.simplilearn.com/tutorials/machine-learning-tutorial/what-is-epoch-in-machine-learning#:~:text=An%20epoch%20is%20when%20all,dataset%20takes%20around%20an%20algorithm.)
* **Exploratory Data Analysis (EDA)**<a name="exploratory-data-analysis"></a>: Exploratory Data Analysis (EDA) is an approach to analyzing datasets to summarize their main characteristics, often using visual methods. EDA is a crucial step in the data preprocessing phase, helping to understand the data’s structure, detect outliers, find patterns, and test hypotheses. Techniques used in EDA include summary statistics, data visualization (e.g., histograms, box plots), and correlation analysis. EDA provides insights that guide further data cleaning and feature engineering processes.
  * Useful links: [What is Exploratory Data Analysis?](https://www.geeksforgeeks.org/what-is-exploratory-data-analysis/)
* **Exponential Smoothing**<a name="exponential-smoothing"></a>: Exponential smoothing is a time series forecasting method for univariate data. It involves using weighted averages of past observations, where the weights decrease exponentially as the observations get older. The simplest form, single exponential smoothing, is used for data without a trend or seasonality. More complex forms, like double and triple exponential smoothing (Holt-Winters), can capture trends and seasonality. Exponential smoothing is widely used in forecasting applications due to its simplicity and effectiveness.
  * Useful links: [Introduction to Exponential Smoothing](https://machinelearningmastery.com/exponential-smoothing-for-time-series-forecasting-in-python/)
* **Early Stopping**<a name="early-stopping"></a>: Early stopping is a regularization technique used to prevent overfitting in machine learning models, particularly in deep learning. It involves monitoring the model’s performance on a validation set during training and stopping the training process once the performance stops improving. This helps in finding the optimal number of epochs for training, ensuring that the model generalizes well to unseen data without overfitting the training data.
  * Useful links: [Early Stopping in Machine Learning](https://en.wikipedia.org/wiki/Early_stopping)
* **Embedding**<a name="embedding"></a>: Embedding refers to the representation of categorical data or discrete items in a continuous vector space. This technique is commonly used in natural language processing (NLP) to convert words into dense vectors of real numbers, capturing semantic meaning. Word embeddings like Word2Vec, GloVe, and FastText are examples. Embeddings are also used in recommendation systems, where items (e.g., movies, products) are represented in a latent space to capture similarities and relationships.
  * Useful links: [Understanding Word Embeddings](https://developers.google.com/machine-learning/crash-course/embeddings/video-lecture)
* **Evaluation Metrics**<a name="evaluation-metrics"></a>: Evaluation metrics are measures used to assess the performance of a machine learning model. Common metrics for classification tasks include accuracy, precision, recall, F1-score, and area under the ROC curve (AUC-ROC). For regression tasks, metrics like mean squared error (MSE), mean absolute error (MAE), and R-squared are used. Choosing the right evaluation metric is crucial as it directly impacts model selection, hyperparameter tuning, and overall performance assessment.
  * Useful links: [Evaluation Metrics for Machine Learning](https://www.geeksforgeeks.org/metrics-for-machine-learning-model/)
* **Evolutionary Algorithms**<a name="evolutionary-algorithms"></a>: Evolutionary Algorithms (EAs) are a subset of evolutionary computation, inspired by natural selection and genetics. They are used to solve optimization problems by iteratively improving a set of candidate solutions. Key components include selection, mutation, crossover, and reproduction. Common types of EAs include Genetic Algorithms, Genetic Programming, and Evolutionary Strategies. EAs are particularly useful for solving complex problems where traditional optimization methods are not effective.
  * Useful links: [Introduction to Evolutionary Algorithms](https://www.geeksforgeeks.org/genetic-algorithms)
* **Expectation-Maximization (EM) Algorithm**<a name="expectation-maximization"></a>: The Expectation-Maximization (EM) algorithm is an iterative method used for finding maximum likelihood estimates of parameters in statistical models, especially when the data involves latent variables. It consists of two steps: the Expectation step (E-step), which estimates the missing data given the current parameters, and the Maximization step (M-step), which maximizes the likelihood function based on the estimated data. EM is commonly used in clustering (e.g., Gaussian Mixture Models) and missing data imputation.
  * Useful links: [Introductory blog post by me](https://rishabhmisra.github.io/Maximum-Likelihood-Estimates-Motivation-For-EM-Algorithm/) \| [Advanced blog post by me](https://rishabhmisra.github.io/Inference-Using-EM-Algorithm/)

[Back to Top](#top)

## F<a name="F"></a>
* **Feature Engineering**<a name="feature-engineering"></a>: Feature engineering is the process of using domain knowledge to create new features or modify existing ones to improve the performance of a machine learning model. This process includes techniques such as normalization, encoding categorical variables, creating interaction terms, and extracting features from date-time data. Effective feature engineering can significantly enhance a model's predictive power and is often more impactful than choosing complex algorithms.
  * Useful links: [Feature Engineering for Machine Learning](https://www.analyticsvidhya.com/blog/2016/01/guide-data-exploration/)
* **Feature Selection**<a name="feature-selection"></a>: Feature selection is the process of selecting a subset of relevant features for building a robust machine learning model. The main goal is to improve the model’s performance by reducing overfitting, enhancing generalization, and decreasing training time. Common techniques include filter methods (e.g., mutual information), wrapper methods (e.g., recursive feature elimination), and embedded methods (e.g., Lasso regression). Feature selection helps in identifying the most significant features that contribute to the predictive power of the model.
  * Useful links: [An Introduction to Feature Selection](https://machinelearningmastery.com/an-introduction-to-feature-selection/)
* **Forward Propagation**<a name="forward-propagation"></a>: Forward propagation is the process of moving input data through the layers of a neural network to generate an output. During this process, each neuron computes a weighted sum of its inputs, applies an activation function, and passes the result to the next layer. Forward propagation is a crucial step in both training and prediction phases of neural networks, as it computes the predicted output for a given input.
  * Useful links: [Understanding Forward Propagation](https://deepai.org/machine-learning-glossary-and-terms/forward-propagation)
* **F1 Score**<a name="f1-score"></a>: The F1 Score is a metric used to evaluate the performance of a classification model. It is the harmonic mean of precision and recall, providing a single measure that balances both concerns. The F1 Score is particularly useful when dealing with imbalanced datasets, where focusing solely on accuracy can be misleading. A high F1 Score indicates that the model has both high precision (few false positives) and high recall (few false negatives).
  * Useful links: [F1 Score Explained](https://towardsdatascience.com/understanding-the-f1-score-precision-recall-4e7b4e75927d)
* **Feature Scaling**<a name="feature-scaling"></a>: Feature scaling is a technique used to normalize the range of independent variables or features of data. In machine learning, this is important for algorithms that compute distances between data points, like k-nearest neighbors (KNN) and support vector machines (SVM). Common methods of feature scaling include Min-Max scaling and Standardization (Z-score normalization). Scaling ensures that each feature contributes equally to the model’s performance.
  * Useful links: [Feature Scaling Techniques](https://scikit-learn.org/stable/modules/preprocessing.html#scaling-features)
* **Factorization Machines**<a name="factorization-machines"></a>: Factorization Machines are a type of model that generalizes matrix factorization and linear regression, designed to capture interactions between features in high-dimensional sparse datasets. They are particularly effective for recommendation systems and predictive modeling tasks where interactions between variables are significant. Factorization Machines model pairwise interactions among features, providing a powerful way to handle large and sparse data.
  * Useful links: [Factorization Machines Explained](https://towardsdatascience.com/factorization-machines-d42f35e6b4ec)
* **False Positive Rate (FPR)**<a name="false-positive-rate"></a>: The False Positive Rate (FPR) is a metric used to measure the proportion of negative instances that are incorrectly classified as positive by a machine learning model. It is calculated as the ratio of false positives (FP) to the sum of false positives and true negatives (TN). FPR is crucial in scenarios where the cost of false positives is high, such as fraud detection or medical diagnosis.
  * Useful links: [Understanding False Positive Rate](https://machinelearningmastery.com/classification-accuracy-is-not-enough-more-performance-measures-you-can-use/)
* **Forward Selection**<a name="forward-selection"></a>: Forward Selection is a feature selection technique used to iteratively add features to a model based on their statistical significance. Starting with no features, the algorithm adds one feature at a time, selecting the one that improves the model the most at each step. This process continues until adding more features does not significantly improve the model. Forward Selection helps in identifying the most important features and building a parsimonious model.
  * Useful links: [Forward Selection Explained](https://towardsdatascience.com/step-forward-feature-selection-a-better-approach-5946ec1b142)
* **Fisher’s Linear Discriminant**<a name="fishers-linear-discriminant"></a>: Fisher’s Linear Discriminant is a linear classification technique used to find a linear combination of features that best separates two or more classes of objects. It maximizes the ratio of the variance between the classes to the variance within the classes, providing a projection that enhances class separability. Fisher’s Linear Discriminant is widely used in pattern recognition and machine learning for its simplicity and effectiveness.
  * Useful links: [Fisher’s Linear Discriminant Explained](https://www.analyticsvidhya.com/blog/2017/09/understaing-fishers-linear-discriminant/)
* **Fine-Tuning**<a name="fine-tuning"></a>: Fine-tuning is a transfer learning technique where a pre-trained model is further trained on a new, typically smaller, dataset. This process involves adjusting the weights of the pre-trained model slightly to better fit the new data while leveraging the knowledge the model has already learned. Fine-tuning is commonly used in natural language processing (NLP) and computer vision tasks to adapt pre-trained models to specific applications.
  * Useful links: [Fine-Tuning in Deep Learning](https://towardsdatascience.com/transfer-learning-and-fine-tuning-in-deep-learning-a-tutorial-2b06c1b8de87)
  
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

