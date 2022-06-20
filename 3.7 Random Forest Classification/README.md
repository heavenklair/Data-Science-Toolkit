# Random Forest Classification

The code from Data Science Handbook in Python is exactly similar to the one in section 2.6 except from one difference. The difference is that in section 2.6, we are using 

```
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import BaggingClassifier
tree = DecisionTreeClassifier()
bag = BaggingClassifier(tree, n_estimators=100, max_samples=0.8,
                        random_state=1)
```

to create the Random Forest Classifier, but in this section we are using 

```
from sklearn.ensemble import  RandomForestClassifier
bag = RandomForestClassifier(n_estimators=100, criterion = 'entropy', random_state = 1)
```

They both does the same trick and gives us a Random Forest model.
