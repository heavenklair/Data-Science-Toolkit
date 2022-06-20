# Random Forest Introduction

Random Forest is a version of ensemble learning (others being for example gradient boosting). Ensemble learning is when you take multiple algorithms or the same algorithm multiple times and we put them together to make something much more powerful than the original.

## How Random Forest works?

1. Pick at random K data points from the Training Set.
2. Build the Decision Tree associated to those K data points.
3. Choose the number (Ntree) of trees you want to build and repeat STEP 1 & 2.
4. For a new point, make each one of your Ntree trees predict the value of Y for the data point in question, and assign the new data point the average across all of the predicted Y values.

1. This algorithm improves the accuray of our predictions. 

    If one of the prediction the decision tree was built imperfectly (because the way those data points were selected), the result from that decision tree algorithm will be bad prediction.
    
    But since the Random Forest is taking average of many decision trees, the predicted result will be more accurate than that decision tree algorithm.
    
2. Random Forest Algorithms are more stable algorithms. 

    Any changes in your data set could really impact one tree, but affect a forest is much harder. 
    
Ensemble Learning is, therefore, much more powerful. 


