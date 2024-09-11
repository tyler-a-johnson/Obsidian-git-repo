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
