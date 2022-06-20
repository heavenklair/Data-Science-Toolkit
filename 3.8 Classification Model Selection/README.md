In this section, we will learn how to select quickly and efficiently the best classification model out of all the model that we covered so far.

We got a new dataset, which will be evaluated by all the different classification model in section 3 so far and see how they perform.

The dataset has 10 independent variables and one dependent variable. The dependent variable is called "Class". All the values in this data are numeric values, so we do need to perform any pre-procesing on the dataset. The target variable has a binary numeric values, 2s and 4s.

This data belongs to the [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/index.php) and it is about [Breast Cancer](https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/).

We run all the different model on this data and use the accuracy_score from the scikit-learn to compare the models.

Here are the accuracy scores that we got after running all the models.
* Decision Tree : 96.0%
* K-NN : 94.7%
* Kernel SVM : 95.3% 
* Logistic Regression : 94.7% 
* Naive Bayes : 94.1% 
* Random Forest : 93.6% 
* Support Vector Machines : 94.1

Thus, Decision Tree Classification model is the winner for this dataset.