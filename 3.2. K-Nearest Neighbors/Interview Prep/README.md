# Interview Preparation for K-NN

### How do you choose the optimal k in k-NN?
There is not a rule of thumb to choose a standard optimal k. This value depends and varies from dataset to dataset, but as a general rule, the main goal is to keep it:
* small enough to exclude the samples of the other classes but
* large enough to minimize any noise in the data.

### Would you use K-NN for large datasets?
It's not recommended to perform K-NN on large datasets, given that the computational and memory cost can increase

### What is the main difference between k-Means and k-Nearest Neighbours?
* k-Means is a clustering algorithm that tries to partition a set of points into k sets such that the points in each cluster tend to be near each other. It is unsupervised because the points have no external classification.

* k-Nearest Neighbors is a classification (or regression) algorithm that, in order to determine the classification of a point, combines the classification of the k nearest points. It is supervised because it is trying to classify a point based on the known classification of other points.

###  How can you relate the KNN Algorithm to the Bias-Variance tradeoff?
* In KNN, K represents the number of nearest neighbors you want to select to predict the class of a given item, which is coming as an unseen dataset for the model. We can relate the bias-variance tradeoff with this value.
* Choosing a small value of K can cause that noise to have a higher influence on the result, which will also lead to a large variance in the predictions and an overfitted model.
* Choosing a large value of K, the accuracy in the training set will increase and it will lead to an under-fitted model. As a result, the error in the test set will go up. So, choosing K to a large value may lead to a model with a large bias(error).

Hence, there is a tradeoff between overfitting and underfitting and we have to maintain a balance while choosing the value of K in KNN, K should not be too small or too large.

### What are some advantages and disadvantages of k-Nearest Neighbors?  
Some advantages of KNN are:
* The algorithm is simple and easy to implement.
* There is no need to build a model, perform hyperparameter tuning, or make additional assumptions.
* The algorithm is versatile, it can be used for classification, regression, and search.

One of the only disadvantages of KNN is that it gets significantly slower as the number of examples/predictors/independent variables increase.

###  If you are using k-Nearest Neighbors, what type of Normalization should be used? 
* For k-NN, normalizing the data between 0 and 1 is a good idea.
* k-NN uses the Euclidean distance, as its means of comparing examples.
* For all of the features to be of equal importance when calculating the distance, the features must have the same range of values. This is only achievable through normalization.

### Does kNN suffer from the Curse of Dimensionality and if it why?
Yes, very much so, K-Nearest Neighbors operates on the distance between the data points. The distance of the data points is inversely proportional to the exponential increase in the number of data points that leads to the curse of dimensionality.

However, multiscale KNN ensemble algorithms are surprisingly robust to this phenomenon, and this approach offers a potential way of using KNN on high-dimensional data effectively.


### Compare Decision Trees and k-Nearest Neighbors  

* KNN is a supervised algorithm that is used for clustering.
* Decision Trees is an algorithm that is used for classification or regression.
* KNN determines neighborhoods, so there must be a distance metric. This implies that all the features must be numeric. The distance metric is affected by the varying scales between attributes and also high-dimensional space.
* Decision Trees predict a class for a given input vector. The attributes may be numeric or nominal.