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
- **Data set** $D$: a set of observed data instances
	- $D = \{         d_{1},d_{2},\dots ,d_{|D|}        \}$
	- Man y ty