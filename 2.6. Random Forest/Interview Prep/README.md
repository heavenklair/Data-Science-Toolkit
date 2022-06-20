# Interview Prep Question on Random Forest

### How would you define Random Forest? 
* Random Forests is a type of ensemble learning method for classification, regression, and other tasks.
* Random Forests works by constructing many decision trees at a training time. The way that this works is by averaging several decision trees at different parts of the same training set.

### Explain how the Random Forests give output for Classification, and Regression problems?  
* Classification: The output of the Random Forest is the one selected by the most trees.
* Regression: The output of the Random Forest is the mean or average prediction of the individual trees.

### What are Ensemble Methods? 
Ensemble methods is a machine learning technique that combines several base models in order to produce one optimal predictive model. Random Forest is a type of ensemble method.

### What are some hyperparameters in Random Forest?  
* Number of decision trees in the forest.
* Number of features considered by each tree when splitting a node.
* The maximum depth of the individual trees.
* The minimum samples to split on at an internal node.
* The maximum number of leaf nodes.
* Number of random features.
* The size of the bootstrapped dataset.

### Does Random Forest need Pruning? Why or why not?  
Pruning is a data compression technique in machine learning and search algorithms that reduces the size of decision trees by removing sections of the tree that are non-critical and redundant to classify instances. Random Forest usually does not require pruning because it will not over-fit like a single decision tree.

###  Explain the advantages of using Random Forest  
* Random Forest is very versatile and can be used in both regression and classification tasks. It can also handle all binary, categorical, and numerical features.
* It performs better in high dimensionality since the work is on subsets of data.
* The training speed is faster than decision trees because they are working only on a subset of features. Even if there are hundreds of features the training speed will be significantly faster.
* The Random Forest is good at balancing errors for class population unbalanced data sets.
* It has low bias, but moderate variance because when all the trees are averaged in random forest, all the variances are also averaged so it has low bias but a moderate variance.

### What are some drawbacks of using Random Forest?  
* Random Forest models are not interpretable.
* If the datasets are very large, the size of the trees will take up a lot of memory.
* If the model has a lot of trees, then the model will be too slow for real-time predictions.

### Why Random Forest models are considered not interpretable?  
The general recommendation for random forests is to use as many trees as possible. In most cases, with hundreds of trees, you wouldn't be able to understand why did they collectively made the decision that they made.

### What is Out-of-Bag Error?  
* Out-of-bag error (OOB) is a method of measuring the prediction of error of random forest.
* The OOB error for regression is given by:
```math
\text{OOB} = \frac{1}{n} \sum_{i=1}^{n} \bigg( Y_i - \hat{Y_i} \bigg)^2
```
* The OOB error for classification is given by:
```math
\text{OOB} = \frac{1}{n} \sum_{i=1}^{n} 1_{Y_i \neq \hat{Y_i}}
```

### What does Random refer to in Random Forest?  
Random forest is Random in the following ways:
* Each tree is trained on a random subset of features, which ensures low correlation among decision trees.
* Each tree in the forest is trained in 2/3-rd of the total training data and data points are drawn at random from the original dataset.

### How does the number of trees affect the Random Forest model?  
* Increasing the number of trees in the forest creates a more robust aggregate model with less variance, at the cost of a greater training time.
* If there are a lot of observations and less number of trees then some observations will be left out.
* If there are a lot of features and fewer number of trees then some features with high predictive power can get left out and not be used, or be used a little.

### How would you define the criteria to split on at each node of the trees?  
These Decision Trees make locally optimal decisions at each node by computing which features and which value of that feature best splits the observations up to that point. Metrics used by decision trees to make locally optimal decisions at each node are:
* Gini or Entropy for Classification.
* Mean Absolute Error or Mean Squared Error for Regression.

There is no set rule to choose one metric over the other so it is better to try both and see which one gives a better outcome. Fine tuning the split criteria could lead to different forests.

### How do you determine the Depth of the Individual Trees?  
* Increasing the depth of the individual trees increases the possible number of feature/value combinations that are taken into account.
* A deep tree has more splits and it has more information about the data it takes into account.
* Increasing the depth of an individual tree can lead to overfitting but in Random Forest it is harder to overfit (it is still possible to overfit in large depth values).
* The depth parameter should be set to a reasonable value. The trees should not be very shallow, nor be very deep. Changing the value of the depth does not impact the performance of the model that much.

### How does Random Forest handle missing values?  
The Random Forest methods encourage two ways of handling missing values:
* Drop data points with missing values. This is not recommended due to the fact that all the available data points is not used.
* Fill in the missing values with the median (for numerical values) or mode (for categorical values). This method will brush too broad a stroke for datasets with many gaps and significant structure.

There are other methods of filling in missing values such as calculating the similarity between the missing features, and the missing values estimated by weighting.

### How would you improve the performance of Random Forest?
Some things to try to improve the performance of Random Forest are:
* Using a higher quality dataset and feature engineering. Using too many features and data are not good for the model so sometimes it is important to perform some feature reduction too.
* Tuning the hyperparameters of the algorithm.