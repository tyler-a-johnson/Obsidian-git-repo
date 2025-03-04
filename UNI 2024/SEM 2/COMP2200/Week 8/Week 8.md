---
date: 2024-09-12
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**

# Machine Learning for Data Science

## What is Learning?

-  Task $T$
- Performance $P$ of a computer program on task $T$
- Experience $E$

If a computer program gains performance improvement on $T$ by leveraging experience $E$, it can be said that the computer program learns from $E$ with respect to $T$ and $P$.

- Experience is often embedded in the form of data.
- Compared to no learning.

**TASK:** Predict if a loan request can be approved or not
- Performance: accuracy
- No learning: to *randomly* approve a future request
	- Accuracy (expected) 50% : 50% (training accuracy)
- Experience (data): loan application data

| ID  | Age    | Has_job | Own_house | Approved |
| --- | ------ | ------- | --------- | -------- |
| 1   | young  | yes     | no        | yes      |
| 2   | middle | yes     | yes       | yes      |
| 3   | old    | no      | yes       | no         |

- **Simple learning:** approve a future request with 'yes'
	- Accuracy: 66.7% (training accuracy) > 50%

## What is Machine Learning?
- A subset of artificial intelligence in the field of computer science
- Gives computers ability to "learn" (progressively improve performance on a specific task) with data
- Without being explicitly programmed.

**Components**
- *Model*: Represents the form of learning result
- *Learning* *algorithm*: how to generate a model from data
- *Data*: input to ML algorithms

**Aims** to predict unseen data or to interpret existing data

### Two Stages of Machine Learning
- Training Stage - Training to generate a model from observed data
- Testing Stage - Testing to use the learned model to predict unseen data

## Data
Here are some term definitions for talking about data.
- **Data set:** $D$ a set of observed data instances
	- $D = \{         d_{1},d_{2},\dots ,d_{|D|}        \}$
	- Many types: numerical vectors, an image, a graph, ....
	- Assumption: i.i.d. (independent & identically distributed)
		- Instances in D follow a (unknown) distribution, from which each instance is independently sampled.
- **Training Data:** Data used in training stage
- **Testing data:** data used in the testing stage
- **Validation data:** used to select learning models

**Assumption:** the distribution of training examples is *identical* to the distribution of test examples (including future unseen examples)
- In practice, this is often violated to certain degree.
- Strong violations will clearly result in poor performance.
- To achieve good accuracy on the testing data, training examples must be sufficiently representative of the test data.
![](Attachments/Pasted%20image%2020240912202614.png)
**Label/Target of data**
- The interesting attribute(s) for prediction
- Further, $d_{i} = < x_{i}, y_{i}>$

```ad-note
title: [[Supervised learning models]]
- **Regression:** y is *continuous*
- **Classification:** y is *discrete* (binary or multi-class)
```

**No explicit label/target information**
- Then, $d_{i} = <x_{i}, .>$
```ad-note
title: [[Unsupervised Learning]]
- **Clustering**

```

```ad-note
title: [[Semi-Supervised Learning]]
 - labour is often costly

```

### Data Examples

MINST data: Handwritten digit recognition
[MNIST handwritten digit database, Yann LeCun, Corinna Cortes and Chris Burges](http://yann.lecun.com/exdb/mnist/)

![](Attachments/Pasted%20image%2020240912203514.png)

- **Represent input image as a vector** $x_{i} \in \mathbb{R}^{784}$
	- Feature extraction, a pre-processing step
	- ![](Attachments/Pasted%20image%2020240912203841.png)
- Label/targe vector $t_{i}$
	- $t_{i} \in \{  0,1 \}^{10}$, a discrete, finite label set
	- $t_{i} = (0,0,1,0,0,0,0,0,0,0)$
- Learning model $y: \mathbb{R}^{784}\rightarrow \mathbb{R}^{10}$
	- Dataset: $D = \{  \langle    x_{1}, t_{1}    \rangle , \dots , \langle    x_{N}, t_{N}    \rangle  \}$
	- Supervised learning.
	- Classification problem.

## Model
**Model:** a map from input space to output space
- i.e. $f: X \rightarrow Y$
- An infinite number of such maps
- Input space: Space spanned by feature attributes

**Hypothesis space $H$:** space of all possible maps
- Functional space: $H = \{ f| X \rightarrow Y \}$

**Ground truth:** Underlying true mechanisms of generating the observed data
- But *never* known in reality.
- The purpose of learning: to approximate the ground truth.

## Parameter Space

What do we really learn from data for a model?
- Hypothesis space is usually pre-specified in terms of problem domains
- Different models are determined by parameters
- Let $\theta$ denote the parameter vector, we have:
$$H \equiv \{  f | y=f_{\theta}(x) \}$$

**Parameter space**
- Can be real value spaces, e.g., $\mathbb{R}^{n}$
- Structure of a model (more implicit), e.g., tree or graph structures, as well as partitions of the input space.

Eg linear regression models $y = w_{0} + w_{1}x$
![500](Attachments/Pasted%20image%2020240912211603.png)


# K - Nearest Neighbours Classifier
**Idea: Instance based learning**
- Similar examples have similar labels
- Classify new examples like similar training examples

**Algorithm**
- Given some new example $x$ for which we need to predict its class $y$.
- Find the most similar training examples
- Classify $x$ "like" these most similar examples

**Questions:**
- How to determine similarity
- How many similar training examples to consider?

## 1-Nearest Neighbour
- One of the simplest classifiers
- *Basic idea*: label a new point the same as the closest known data instance.
![](Attachments/Pasted%20image%2020240912212142.png)
- A distance metric (to measure similarity)
	- Euclidian distance is commonly-used
	- When different units are used for each dimension
		- Standardization can apply
	- For categorical data, we can use hamming distance
		- $d(x_{1}, x_{2})$ = number of features on which $x_{1}$ and $x_{2}$ differ
	- Others (e.g. cosine, Manhattan)
- How to fit with training data instances?
	- Just predict the same output as the nearest neighbour

The resultant space partition is a **[[Voronoi Diagram]]**
![](Attachments/Pasted%20image%2020240912212731.png)

## K - Nearest Neighbour
- Generalizes 1 NN to smooth away **noise** in the labels
- A new data instance is now assigned **the most frequent** label of its *k* nearest neighbours
- E.g. K = 3, and K = 7.
![](Attachments/Pasted%20image%2020240912212915.png)


### KNN Example

**Training Data**

|     | Food (3) | Chat (2) | Fast (2) | Price (3) | Bar (2) | BigTip |
| --- | -------- | -------- | -------- | --------- | ------- | ------ |
| 1   | great    | yes      | yes      | normal    | no      | yes    |
| 2   | great    | no       | yes      | normal    | no      | yes    |
| 3   | mediocre | yes      | no       | high      | no      | no     |
| 4   | great    | yes      | yes      | normal    | yes     | yes    |
- Similarity metric: # of matching attributes (k = 2)
- New examples
	- Example 1  (great, no, no, normal, no)?
	- Example 2 (mediocre, yes, no, normal, no)?


- Pairwise similarity

| Index     | Instance 1 | Instance 2 | Instance 3 | Instance 4 |
| --------- | ---------- | ---------- | ---------- | ---------- |
| Example 1 | 3          | 4          | 2          | 1          |
| Example 2 | 3          | 2          | 4          | 2          |

- Prediction (k = 2)
	- Example 1 (great, no, no, normal, no)? *'yes'*
		- Most similar: Instance 2 (1 mismatch, 4 match) $\rightarrow$ *yes*
		- $2^{nd}$ most similar: instance 1 (2 mismatch, 3 match) $\rightarrow$ *yes*
	- Example 2 (mediocre, yes, no, normal, no)? *yes/no*
		- Most similar: Instance 3 (1 mismatch, 4 match) $\rightarrow$ *no*
		- $2^{nd}$ most similar: instance 1 (2 mismatch, 3 match) $\rightarrow$ *yes*

### KNN Limitations
- Each prediction takes $O(n)$ computational complexity
	- Use fancy data structures such as KD-trees to accelerate the search of nearest neighbours
	- Or use [[locality-sensitive hashing]] to approximate nearest neighbours with constant computational complexity.
- Prediction performance degrades when number of attributes grows
	- *Curse of dimensionality*: When the number of attributes is big, similarity/distance measures become less reliable.
	- Remedy
		- Remove irrelevant attributes in pre-processing
		- Weight attributes differently

# Model Selection (Select k)

- **We cannot learn K from training data**. It is a hyperparameter, rather than a model parameter
- Usually, K should be determined by model users.
	- Different K will produce different classifiers
	- Then, how to choose a value for K?

## Model Complexity
- Refers to the number of degrees of freedom in a learned model
- Often measured as the number of adjustable weights or parameters in the architecture, e.g weights in regression.
- High complexity $\rightarrow$ **stronger capability** of capturing information from training data.

**KNN classifier's complexity**
- No explicit model parameters
- Actually, the **decision boundary** formed from the input space partition is relevant to the model complexity.
- The smoother the boundary is, the complexity is lower.

$K$ acts as a smoother and controls model complexity
![](Attachments/Pasted%20image%2020240912221625.png)
$K = 1$ leads to the roughest decision boundaries.

*We cannot just pick 1-NN classifier even though it is the most "complex" and "powerful"*
## Training / Testing Errors
**Training Error** (or empirical error) of a trained model $\hat{f}$ on a training data sat of size $N$.
$$E_{emp} (\hat{f}) = \frac{1}{N} \sum_{i=1}^{N} L (y_{i}, \hat{f}(x_{i}))$$
Note that the loss function $L\left(  .,.   \right)$ requires instantiation for a specific model e.g. the squared error in linear regression.

***Testing error*** on a test data set with size $N'$. *More important, we want to minimize this.*
$$E_{test}(\hat{f}) = \frac{1}{N'} \sum _{i=1}^{N'} L ( y_{i} , \hat{f}(x_{i}) )$$
- Indicating the *generalisation capability of a learned model*

**Empirical study on KNN classifiers**
- 40 point for training, 10 points for testing
- 3 classes
- Error is calculated by 1.0 - *accuracy*
![](Attachments/Pasted%20image%2020240912224519.png)

![](Attachments/Pasted%20image%2020240912224445.png)

**Observation 1**
- Training error keeps going up when K increases
	- 0 when K = 1
- Testing error does not take lowest value at K = 1
	- ***Testing error is minimized around K = 9.***
- So a paradox for $K = 1$ case
	- **Overfitting:** a model is too strong and captures the very details of training samples, lacking generalization capability
		- Data is **noisy**, and the model is fitted to noise.
		- *Fighting against overfitting is important in machine learning.*

**Observation 2**
- Both errors are maximised when K = 40.
	- All testing sample will be predicted as the same label, why?
+ This is an **underfitting** issue
	+ Easy to address by just increasing model complexity
+ Insights
	+ Model selection is non-trivial
	+ We need to use **testing error** as performance indicator to guide model selection for the generalization capability.


## So how do we select K
- Increase K
	- Make KNN classifier less sensitive to noise
	- Avoid overfitting
- Decrease K
	- Allow capturing finer structure of space
	- Avoid underfitting
- Pick K not not large or small
	- Data-specific
	- This is model selection by hyperparameter tuning
	- **cross validation** can be used to find a suitable $K$
	- Theoretically, this is related to **bias variance tradeoff**
## Estimate Testing Error
- Option 1: Randomly divide the available set samples into two part: training data and validation data.
	- Randomness will not give a robust testing error estimation
	- Wasting of data: the training data fail to contribute testing error while the validating data fail to contribute to training.
		- We hope all data instances contribute to **better model training** and more **robust testing error estimation**.
- Option 2: **k-fold cross validation**
	- Randomly partition data into $k$ subsets ($k$ is usually 5,10)
	- In each round, leave a subset out as the validating data
	- Combined results from multiple rounds are reported as the robust testing error estimation.
![](Attachments/Pasted%20image%2020240912231829.png)

## Automatic Tuning 
- Challenges in hyperparameter turning
	- Many hyperparameters are continuous
		- E.g, complexity parameter $\alpha$ in Ridge regression
		- Search space is continuous
	- Need to tune multiple hyperparameters simultaneously
- Automation strategies
	- Grid search
		- Exhaustive search over specified parameter values
	- Random search
		- A fixed number of parameter settings is sampled from specified distributions
