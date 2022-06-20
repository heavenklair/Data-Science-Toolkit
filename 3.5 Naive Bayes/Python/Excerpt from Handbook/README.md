# Excerpts from the Handbook 

Formula for Naive Bayes Classifier: 
```math
P(y|x_1,\ x_2,\ \ldots, x_j) = \frac{  P(x_1,\ x_2,\ \ldots, x_j|\ y) \cdot P(y) }{P(x_1,\ x_2,\ \ldots, x_j)}
```

There are two important things to note about naive bayes classifiers. First, for each feature in the data, we have to assume the statistical distribition of the likelihood, $`P(x_j|y)`$. The common distributions are the normal (Gaussian), multinomial, and Bernoulli distributions. The distribution chosen is often determined by the nature of features (continuous, binary, etc.) Second, naive bayes gets its name because we assume that each feature, and its resulting likelihood, is independent. This "naive" assumption is frequently wrong, yet in practice does little to prevent building high-quaility classifier.

Different types of naive Bayes classifier rest on different naive assumptions about the data, and we will examine a few of these in the following sections:

