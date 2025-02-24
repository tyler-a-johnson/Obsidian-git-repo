---
date: 2024-11-12
tags: 
status: Incomplete
Relevant Questions: []
Relevant Notes:
  - "[[Decision Tree Classifiers]]"
Relevant Links:
---
# Comprehensive Decision Tree Notes

## 1. Introduction to Decision Trees
Decision trees are hierarchical structures used for both classification and regression tasks. They partition the feature space along axes to produce decision regions.

Key Advantages:
- High efficiency (logarithmic tree operations)
- Non-linear decision boundaries
- High interpretability
- Readily convertible to decision rules

### Basic Tree Structure
- Root Node: Top node of the tree
- Decision Node: Internal node that splits into branches
- Terminal Node (Leaf): Final node containing the prediction
- Branch/Sub-tree: Part of the tree below a decision node

## 2. Entropy
### What is it?
Entropy is a measure of impurity or uncertainty in a dataset. Lower entropy means the data is more organized or pure (contains more of one class).

### Equation
$$H(X) = -\sum_{i=1}^n p(x_i) \log_2 p(x_i)$$

Variables:
- H(X): Entropy of random variable X
- p(x_i): Probability of occurrence of value x_i
- n: Number of possible values

Purpose: Used to measure how mixed the classes are in a dataset. Perfect purity = 0 entropy.

Example:
Dataset: [Play Tennis: Yes=9, No=5]
```python
p(Yes) = 9/14 = 0.643
p(No) = 5/14 = 0.357
H = -((0.643 × log₂(0.643)) + (0.357 × log₂(0.357))) = 0.940 bits
```

## 3. Information Gain
### What is it?
Information Gain measures how much information we gain about the target variable by splitting on a particular feature.

### Equation
$$Gain(D,\phi_j) = Info(t_D) - Info_D(\phi_j)$$

Where:
$$Info_D(\phi_j) = \sum_{i=1}^v \frac{|D_i|}{|D|} Info(t_{D_i})$$

Variables:
- D: Dataset
- φ_j: Feature being evaluated
- t_D: Class labels in dataset D
- D_i: Subset of D after partition
- v: Number of possible values for feature φ_j

Purpose: Used to select the best feature to split on at each node. Higher information gain = better split.

Example:
For Humidity in tennis dataset:
```python
Original entropy = 0.940
High humidity: [3+,4-] → entropy = 0.985
Normal humidity: [6+,1-] → entropy = 0.592
Weighted average = (7/14 × 0.985) + (7/14 × 0.592) = 0.789
Information Gain = 0.940 - 0.789 = 0.151
```

## 4. Gain Ratio
### What is it?
Gain Ratio addresses a bias in Information Gain that favors features with many values. It normalizes information gain by the feature's split information.

### Equation
$$GainRatio(D,\phi_j) = \frac{Gain(D,\phi_j)}{SplitInfo(\phi_j)}$$

Where:
$$SplitInfo(\phi_j) = -\sum_{i=1}^v \frac{|D_i|}{|D|} \log_2(\frac{|D_i|}{|D|})$$

Purpose: Prevents the tree from favoring features with many unique values.

## 5. Gini Impurity
### What is it?
Gini impurity measures the probability of incorrect classification if the label was randomly chosen according to the distribution in the node.

### Equation
$$Gini(D) = 1 - \sum_{i=1}^K p_i^2 = \sum_{i=1}^K p_i(1-p_i)$$

For a split:
$$Gini_D(\phi_j) = \sum_{i=1}^V \frac{N_{D_i}}{N_D}Gini(D_i)$$

Purpose: Alternative to entropy for measuring node purity. Used in CART algorithm.

## 6. Handling Continuous Features
### Process:
1. Sort values
2. Find potential split points between adjacent values
3. Evaluate each split point using chosen metric (Gini/Entropy)

### Threshold Equation
$$t_i = \frac{v_i + v_{i+1}}{2}$$

## 7. Tree Pruning Methods
### Pre-pruning (Early Stopping)
- Stop growing when:
  - Minimum samples for split reached
  - Maximum depth reached
  - Minimum samples in leaf reached
  - Maximum leaf nodes reached
**Advantages:**
- Fast
- Prevents overfitting early
**Disadvantages:**
- Risk of underfitting
- May stop too early

### Post-pruning
- Grow full tree
- Remove branches that don't improve performance
- Use validation set to evaluate
**Advantages:**
- Better optimization
- More reliable
**Disadvantages:**
- Computationally intensive
- Requires validation set

## 8. Regression Trees
- Used for continuous target variables
- Split criteria: Usually mean squared error
- Prediction: Average of samples in leaf node
- Can create piece-wise linear functions

## 9. Implementation (sklearn)
### Key Parameters:
- criterion: 'gini' or 'entropy' for classification, 'squared_error' for regression
- max_depth: Maximum tree depth
- min_samples_split: Minimum samples needed to split
- min_samples_leaf: Minimum samples in leaf nodes
- max_leaf_nodes: Maximum number of leaf nodes

Example Usage:
```python
from sklearn.tree import DecisionTreeClassifier
clf = DecisionTreeClassifier(criterion='gini', max_depth=3)
clf.fit(X_train, y_train)
```

This comprehensive guide covers both the theoretical foundations and practical implementations of decision trees, with each equation explained in context of its purpose and use in the algorithm.