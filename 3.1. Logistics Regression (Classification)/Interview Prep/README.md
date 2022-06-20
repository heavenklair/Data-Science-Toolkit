# Interview Preparation Questions 

### Q How would you make a prediction using a Logistic Regression model?
In Logistic regression models, we are modeling the probability that an input ($`X`$) belongs to the default class ($`Y=1`$), that is to say:
```math
P(X) = P(Y = 1|X)
```
where the $`P(X)`$ values are given by the logistic function,
```math
P(X) = \frac{ e^{\beta_0 + \beta_1 X}  }{ 1 + e^{\beta_0 + \beta_1 X}  }
```
The $`β0`$ and $`β1`$ values are estimated during the training stage using maximum-likelihood estimation or gradient descent. Once we have it, we can make predictions by simply putting numbers into the logistic regression equation and calculating a result.

### Q When Logistic Regression can be used?
Logistic regression can be used in classification problems where the output or dependent variable is categorical or binary. However, in order to implement logistic regression correctly, the dataset must also satisfy the following properties:
* There should not be a high correlation between the independent variables. In other words, the predictor variables should be independent of each other.
* There should be a linear relationship between the logit of the outcome and each predictor variable. The logit function is given as $` \text{logit}(p) = \text{log}( \frac{p}{1-p})`$, where $`p`$ is the probability of the outcome.
* The sample size must be large. How large depends on the number of independent variables of the model.

### Q Why is Logistic Regression called Regression and not Classification?
Although the task we are targeting in logistic regression is a classification, logistic regression does not actually individually classify things for you: it just gives you probabilities (or log odds ratios in the logit form). 

The main difference between regression and classification is that the output variable in regression is numerical (or continuous) while that for classification is categorical (or discrete).Logistic regression is basically a supervised classification algorithm. However, the model builds a regression model just like linear regression to predict the probability that a given data entry belongs to the category numbered as “1”.

### Q Explain the general intuition behind logistic regression.
The output for linear regression is a number that has its real meaning.

The output for a logistic regression is a number that represents the probability of the event happening (i.e. the probability of people clicking an ad online, the probability of death in titanic disaster, etc.)

The intuition behind logistic regression is to transform the output of a linear regression which has a wider range, to a range that probability lies in, which is $`[0,1]`$. The transformation formula is Logit that maps a value to a number in the range $`[0,1]`$.

### Q Talk about Logistic Regression in handling outliers
* For Logistic Regression, outliers can have an unusually large effect on the estimate of logistic regression coefficients. It will find a linear boundary if it exists to accommodate the outliers. To solve the problem of outliers, sometimes a sigmoid function is used in logistic regression.

### Q How a Logistic Regression model is trained?
The logistic model is trained through the logistic function, defined as:
```math
P(Y) = \frac{1}{ 1 + e^{-wx} }
```
where $`x`$ is the input data, $`w`$ is the weight vector, $`y`$ is the output label, and $`P(y)`$ is the probability that the output label belongs to one class. If for some input we got $`P(y) > 0.5`$, then the predicted output is 1, and otherwise would be 0.


### Q How do you use a supervised Logistic Regression for Classification?
* Logistic regression is a statistical model that utilizes logit function to model classification problems. It is a regression analysis to conduct when the dependent variable is binary.
* Looking at the logit function, the next question that comes to mind is how to fit that graph/equation. The fitting of the logistic regression is done using the maximum likelihood function.
* In a supervised logistic regression, features are mapped onto the output. The output is usually a categorical value (which means that it is mapped with one-hot vectors or binary numbers).
* Since the logit function always outputs a value between 0 and 1, it gives the probability of the outcome.


### Q What is a decision boundary?
A line or a hyperplane that separates the classes is called a decision boundary. The goal of logistic regression, as with any classifier, is to figure out some way to split the data to allow for an accurate prediction of a given observation’s class using the information present in the features

### Q Why don’t we use Mean Squared Error as a cost function in Logistic Regression?
In Linear Regression, we used the Squared Error mechanism, but, for Logistic Regression, such a cost function produces a non-convex space with many local minimums, in which it would be very difficult to minimize the cost value and find the global minimum.

### Q How can we avoid Over-fitting in Logistic Regression models?

Regularization techniques can be used to avoid over-fitting in regression models. Two types of regularization techniques used for logistic regression models are Lasso Regularization, and Ridge Regularization. Ridge and Lasso allow the regularization (shrinking) of coefficients. This reduces the variance in the model which contributes to the model not overfitting on the data.

### Q Imagine that you know there are outliers in your data, would you use Logistic Regression?

* Logistic Regression: Logistic Regression is an algorithm that will be highly influenced by outliers. If we have outliers in our dataset, the decision boundary could be shifted, which will lead to incorrect inferences. So using Logistic Regression wouldn't be optimal if we have outliers.

* Tree-based model: Algorithms like decision trees or random forests are more robust to outliers. This is because unlike a linear model like Logistic Regression, a tree-based model works by splitting the data into groups (repeatedly) according to whether a data point is above or below a selected threshold value on a selected feature variable. Thus, a data point with a much higher value than the rest wouldn't influence the decision of a tree-based model at all.

### Q When would you use SVM vs Logistic regression?

Generally, the first approach is to try with logistic regression to see how the model performs. If we found that the data can't be linearly separable or the model does not have a good performance, then we can try using SVM.

We can also considerer the following rule of thumb: Given n number of features and m number of training examples:

If n is less than 10,000 and m is less than 1,000 we can use either logistic regression or SVM with a linear kernel.
If n is less than 1,000 and m is less than 10,000 we can use SVM with a Gaussian, polynomial, or another kernel.
If n is less than 1,000, and m is greater than 50,000 we first add more features manually and then can use logistic regression or SVM with a linear kernel.