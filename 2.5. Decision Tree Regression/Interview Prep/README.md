# Interview Prep Question for Decision Trees 

### Q Explain the structure of a Decision Tree 
A decision tree is a flowchart-like (inverted Tree like) structure in which:

* Each internal node represents the test on an attribute.
* Each branch represents the outcome of the test.
* Each leaf node represents a class label.
* The paths from the root to leaf represent the classification rules.

### How are the different nodes of decision trees represented?
A decision tree consists of three types of nodes:

* Decision nodes: Represented by squares. It is a node where a flow branches into several optional branches.
* Chance nodes: Represented by circles. It represents the probability of certain results.
* End nodes: Represented by triangles. It shows the final outcome of the decision path.

### What are some advantages of using Decision Trees?  

* It is simple to understand and interpret. It can be visualized easily.
* It does not require as much data preprocessing as other methods.
* It can handle both numerical and categorical data.
* It can handle multiple output problems.

### What type of node is considered Pure?  
* If the Gini Index of the data is 0 then it means that all the elements belong to a specific class. When this happens it is said to be pure.
* When all of the data belongs to a single class (pure) then the leaf node is reached in the tree.
* The leaf node represents the class label in the tree (which means that it gives the final output).

### How is a Random Forest related to Decision Trees? 
* Random forest is an ensemble learning method that works by constructing a multitude of decision trees. A random forest can be constructed for both classification and regression tasks.
* Random forest outperforms decision trees, and it also does not have the habit of overfitting the data as decision trees do.

### How would you deal with an Overfitted Decision Tree?  
We can deal with the overfitted decision tree by reducing its complexity through the Pruning technique, which is changing the model by deleting the child nodes of a branch node.
The pruning processes can occur in:

* Bottom-up fashion: Start at the lowest node in the tree and follow recursively upwards to determine the relevance of each node. If the relevance for the classification is not given, the node is dropped or replaced by a leaf.

* Top-down fashion: Starts at the root of the tree. Following the structure below, a relevance check is carried out which decides whether a node is relevant for the classification. Here, an entire sub-tree (regardless of its relevance) can be dropped.

There is also a popular pruning algorithm called reduced error pruning, in which starting at the leaves, each node is replaced with its most popular class. If the prediction accuracy is not affected then the change is kept.

### What are some disadvantages of using Decision Trees and how would you solve them?
* Decision-tree learners can create very complicated trees which do not generalize well. This is called overfitting. Pruning, setting the minimum number of samples required at a leaf node, and setting the maximum depth of the tree are necessary to avoid this problem.
* It can be unstable because small variations in the data might result in a completely different tree being generated. Using decision trees within an ensemble will solve this problem.
* Decision trees learners can create biased trees if certain classes dominate. This can be solved by using a balanced dataset prior to fitting the decision tree.

### What is Greedy Splitting?  
* In this procedure all the features are considered and different split points are tried and tested using a cost function. The split with the best cost (or lowest cost) is selected.
* All input variables and all possible split points are evaluated and chosen in a greedy manner (choosing the lowest value of cost possible).

### What type of Cost Functions do Greedy Splitting use? 
For regression predictive modeling problems the cost function used is the sum squared error across all training samples. It is shown below:
```math 
\text{RSS} = \sum_{i=1}^{n} \bigg( y_i -  f(x_i) \bigg)^2
```
For classification problems the cost function used is the Gini index function which provides an indication of how pure the leaf nodes are (how mixed the training data assigned to each node is). It is shown below:
```math
G(p) = \sum_{k=1}^{K} p_k (1-p_k)
```
where, $`p_k`$ is the probability of the item being in the category $`k`$.

### How would you define the Stopping Criteria for decision trees?  
A stopping criteria is needed when a decision tree learner runs, otherwise, it would overfit the data making it unable to give accurate predictions for new data. Some ways to define stopping criteria are as follows:
* Assigning a minimum count in the number of training instances assigned to each leaf node. If the count is less than the minimum then the split is not accepted and the node is taken as a final leaf node.
* Assigning a pre-specified depth of the tree so that the decision tree is not so complex that it overfits the data.
* Stopping when predictor values for all nodes are identical. When this happens, no rule can be generated to split the node.

###  Why do you need to Prune the decision tree?  
After a tree has been built (and in the absence of early stopping discussed below) it may be overfitted. Pruning reduces the size of decision trees by removing parts of the tree that do not provide power to classify instances.
* Pruning the tree after it learns can increase its performance.
* Pruning is a technique that reduces the size of the decision trees by removing sections of the tree that are non-critical and redundant to classify instances.
* If the tree is too large then there is a risk of overfitting, but if the tree is too small then it will not be able to generalize the problem. Pruning helps to keep the tree in a reduced size without affecting the performance in a bad way.

### What is Entropy?  
The basic definition of entropy is a measure of disorder. The equation of entropy is as follows:
```math
E(S) = \sum_{i=1}^{c} -p_i \text{log}p_i
```
The goal is to decrease uncertainties, thus, the models should have less entropy.

The reduction of entropy is defined as information gain. It is shown below:

```math
\text{IG}(Y,X) = E(Y) - E(Y|X)
```
Information gain is just the subtraction of entropy of Y given X from the entropy of just Y. E(Y|X) corresponds to the information of Y that we already know. So, E(Y|X) is not new information for the model.

### What is Gini Index (Gini Impurity) and how is it used in Decision Trees?  
* It calculates the amount of probability of a specific feature that is classified incorrectly when selected randomly.
* Gini index varies between 0 and 1. A Gini index of 0 means that all of the elements belong to a specific class, and 1 indicates a random distribution of elements across various classes. A value of 0.5 shows an equal distribution of elements over some classes.
* The formula for Gini Index is given below:
```math
\text{GI} = 1- \sum_{i=1}^{n} (P_i)^2 
```
* In decision trees, the features possessing the least value of Gini Index get preferred over others.

### What is the use of Entropy pertaining to Decision Trees? 
* Entropy can be used to decide whether to split the data to result in children nodes having data with lower entropy.
* Entropy is calculated for each feature that the parent node can be split on. Then the entropy can be compared with each other and finally a decision can be made based on the information gain (decrease in entropy increases the information gain) that the feature provides.
* Higher information gain relates to a suitable or valid split.

### What is difference between Gini Impurity and Entropy in Decision Tree?  

These are two metrics for choosing how to split a decision tree:
* Gini measurement is the probability of a random sample being classified incorrectly if we randomly pick a label according to the distribution in a branch.
* Entropy is a measurement of information (or rather lack thereof). You calculate the information gain by making a split which is the difference in entropies. This measures how you reduce the uncertainty about the 

Some differences:

* Gini is intended for continuous attributes and Entropy for attributes that occur in classes.
* Gini will tend to find the largest class, and Entropy tends to find groups of classes that make up ~50% of the data.
* Gini minimizes misclassification.
* Entropy is used for exploratory analysis.
* Some studies show this doesn’t matter – these differ less than 2% of the time.
* Entropy maybe a little slower to compute (as includes log).