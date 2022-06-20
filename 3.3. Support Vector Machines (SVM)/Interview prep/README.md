# Interview Questions On SVM

### Q1 What is Support Vector Machine?

Support vector machines (SVMs) are a set of supervised learning methods used for classification, regression and outliers detection. The objective of the support vector machine algorithm is to find a hyperplane in an N-dimensional space(N — the number of features) that distinctly classifies the data points.

Support vector machines focus only on the points that are the most difficult to tell apart, whereas other classifiers pay attention to all of the points.

The intuition behind the support vector machine approach is that if a classifier is good at the most challenging comparisons (the points in B and A that are closest to each other), then the classifier will be even better at the easy comparisons (comparing points in B and A that are far away from each other).

### Q2 What are Support Vectors in SVMs?
* Support vectors are the data points nearest to the hyperplane, the points of a data set that, if removed, would alter the position of the dividing hyperplane.

* Support vectors are those instances that are located on the margin itself. For SVMS, the decision boundary is entirely determined by using only the support vectors.

* Using these support vectors, we maximize the margin of the classifier.

* For computing predictions, only the support vectors are used.

### Q3 For N dimensional data set what is the minimum possible number of Support Vectors?

Regardless of the number of dimensions or size of the data set, the number of support vectors could be as little as 2.

### Q4 Name some advantages of SVM

* Their dependence on relatively few support vectors means that they are very compact models, and take up very little memory.
* Once the model is trained, the prediction phase is very fast.
* Because they are affected only by points near the margin, they work well with high dimensional data-even data with more dimensions than samples, which is a challenging regime for other algorithms.
* Their integration with kernels methods makes them very versatile, able to adapt to many types of data.
* Abundance of Implementations: We can access it conveniently, be it from Python or Matlab.
* SVM can be used for linearly separable as well as non-linearly separable data. Linearly separable data is the hard margin whereas non-linearly separable data poses a soft margin.

### Q5 What are Hard-Margin and Soft-Margin SVMs?

* **Hard-Margin SVMs** have linearly separable training data. No data points are allowed in the margin areas. This type of linear classification is known as Hard margin classification.
* **Soft-Margin SVMs** have training data that are not linearly separable. Margin violation means choosing a hyperplane, which can allow some data points to stay either in between the margin area or on the incorrect side of the hyperplane.
* **Hard-Margin SVMs** are quite sensitive to outliers.
* **Soft-Margin SVMs** try to find the best balance between keeping the margin as large as possible and limiting the margin violations.

### Q6 What happens when there is no clear Hyperplane in SVM?

When there is no clear Hyperplane in SVM, one thing that we can do is move the dataset to a higher dimensional space to get a clear decision boundary. This **‘lifting’** of the data points represents the mapping of data into a higher dimension. This is known as **kernelling**. 

For example, in 1-dimension, the data is not linearly separable, but after applying the transformation $`\rho(x) = x^2`$ and adding this second dimension to our feature space, the classes become linearly separable.

### Q7 What is the “Kernel trick”? and Why would you use the Kernel Trick?

A Kernel is a function capable of computing the dot product of instances mapped in higher dimension space without actually transforming all the instances into the higher feature space and calculating the dot product. This trick makes the whole process much less computationally expensive than that actual transformation to calculate the dot product and this is the essence of the kernel trick.


When it comes to classification problems, the goal is to establish a decision boundary that maximizes the margin between the classes. However, in the real world, this task can become difficult when we have to treat with non-linearly separable data. One approach to solve this problem is to perform a data transformation process, in which we map all the data points to a higher dimension find the boundary and make the classification. 

That sounds alright, however, when there are more and more dimensions, computations within that space become more and more expensive. In such cases, the kernel trick allows us to operate in the original feature space without computing the coordinates of the data in a higher-dimensional space and therefore offers a more efficient and less expensive way to transform data into higher dimensions.

There exist different kernel functions, such as:
* linear,
* nonlinear,
* polynomial: These are the kernel functions that represent the similarity of vectors in a feature space over polynomials of original variables.
* radial basis function (RBF)
* Gaussian Radial Basis Function (RBF) kernel:  Gaussian RBF kernel maps each training instance to an infinite-dimensional space, therefore it’s a good thing that you don’t need to perform the mapping.
*  sigmoid.
Each one of them can be suitable for a particular problem depending on the data.

### Q8 What are Polynomial Kernels?
The polynomial kernel is a kernel function commonly used with SVMs and other kernelized models, that represents the similarity of vectors in a feature space over polynomials of the original variables, allowing learning of non-linear models.


### Q9  What is the Hinge Loss in SVM?

Hinge loss is a loss function used for training classifiers. Hinge loss is most notably used for soft-margin SVMs. The hinge loss penalizes the SVM model for inaccurate predictions (misclassifications).

### Q10 What is the difference between Classification and Regression when using SVM?
* In SVM, we want to find a separating hyperplane such that all points are at a certain distance from this plane. If there are points that are too close to the separating hyperplane, there is a penalty [the hinge loss]:

* In SVR, you want to find a function such that all points are within a certain distance from this function. Unlike other Regression models that try to minimize the error between the real and predicted value, the SVR tries to fit the best line within a threshold value (if points are outside this distance [“ $`\epsilon`$ -tube”], there is a penalty)

### Q11 When SVM is not a good approach?

* Data is hardly given as feature vectors. In reality, more often than not, data might be images, videos, speech, text/language, music, and so on. How do you engineer the features in order to feed an SVM?

* If your data is non-linear and you choose a linear kernel to model it.

* If kernel and its parameters are not properly estimated/chosen.

* SVM is mainly developed for binary classification problems. For handling multi-class problems, either you perform a 1-against-all strategy or do other tricks like optimizing classes together. 

* Your data is imbalanced.

### Q12 While designing an SVM classifier, what values should the designer select?

* **The Regularization Weight** - It helps to include the problematic points into the equation and weight them using the C-Parameter. This parameter is a tradeoff between maximizing the margin and minimizing the error.
* **The Type of Kernel Function** - The kernel functions return the inner product between two points in a suitable feature space. Thus by defining a notion of similarity, with a little computational cost even in very high-dimensional spaces. Kernel function examples are:
* linear,
* nonlinear,
* polynomial,
* Gaussian kernel,
* Radial basis function (RBF),
* sigmoid
* **The Parameters of the Kernel Function** - like Gamma for Gaussian Radial Basis function kernel.
These values should be selected by hand-tuning or by cross-validation.

### Q13 What are Radial Basis Function Kernels?

The RBF kernel in two samples $`x`$ and $`x'`$, represented as feature vectors in some input space, is defined as:
```math
K(x, x') = \text{exp}\bigg( - \frac{||x-x'||^2}{2\sigma^2 } \bigg)
```
where, $`||x-x'||^2`$ is the squared Euclidean distance and $`\sigma`$ is a free parameter.

Since the value of the RBF kernel decreases with distance and ranges between zero (in the limit) and one (when $`x = x'`$), we can use the similarity measure to classify the data points.

### Q14 What are $`C`$ and Gamma ($`\gamma`$) with regards to a Support Vector Machine?

The balance between keeping the margins as large as possible and limiting the margin violation is controlled by the C parameter: a small value leads to a wider street but more margin violation and a higher value of C makes fewer margin violations but ends up with a smaller margin and overfitting.

### Q15 What is a slack variable?
To meet the soft margin objective, we need to introduce a slack variable $`\epsilon \geq 0`$ for each sample; it measures how much any particular instance is allowed to violate the margin.

### Q16 How to select Kernel for SVM?
In the absence of expert knowledge, the Radial Basis Function kernel makes a good default kernel (once you have established it is a problem requiring a non-linear model).

The choice of the kernel and kernel/regularisation parameters can be automated by optimizing a cross-valdiation based model selection.

Automated choice of kernels and kernel/regularization parameters is a tricky issue, as it is very easy to overfit the model selection criterion (typically cross-validation based), and you can end up with a worse model than you started with. The automated model selection also can bias performance evaluation, so make sure your performance evaluation evaluates the whole process of fitting the model (training and model selection).

### Q17 Why is SVM not popular nowadays? Also, when did SVM perform poorly?

There are two main reasons why they are totally out of favor are:
* Data is hardly given as feature vectors. In reality, more often than not, data might be images, videos, speech, text/language, music and so on. SVM by itself here is totally worthless and it needs some feature-extraction method in order to be well. Deep neural nets not only made SVM quite irrelevant, but essentially killed entire fields like traditional computer vision, or traditional machine translation.

* But what if data is in feature-vector format? It happens at times. Well, people realized that it is very hard to beat Adaboost 

So, with the popularization of deep neural nets and gradient boosting methods, it has become hard to justify using SVM