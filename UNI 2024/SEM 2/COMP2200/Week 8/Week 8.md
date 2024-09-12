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
- Model: Represents the form of learning result
- Learning algorithm: how to generate a model from data
- Data: input to ML algorithms

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

# Model
**Model:** a map from input space to output space
- i.e. $f: X \rightarrow Y$
- An infinite number of such maps
- Input space: Space spanned by feature attributes

**Hypothesis space $H$:** space of all possible maps
- Functional space: $H = \{ f| X \rightarrow Y \}$

**Ground truth:** Underlying true mechanisms of generating the observed data
- But *never* known in reality.
- The purpose of learning: to approximate the ground truth.

# Parameter Space

What do we really learn from data for a model?
- Hypothesis space is usually pre-specified in terms of problem 