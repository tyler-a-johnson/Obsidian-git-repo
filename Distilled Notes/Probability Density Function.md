---
date: 2024-11-11
status: Incomplete
Relevant Docs: []
Relevant Notes: []
Relevant Links:
---
***Probability density function*** (PDF) 𝑝 𝑥 over 𝑥
$$p(x) = \lim_{ \delta x \to \infty } Pr \{  X \in (x, x + \delta x)   \} $$

Probability of X in (a,b): $Pr \{  X \in (a,b)  \} = \int ^{b}_{a} p(x) \, dx$

#### Definition and Equation

A **Probability Density Function** ($PDF$) is a mathematical concept used to represent the likelihood of an event occurring, given certain conditions. It's defined as:

$P(x|y)$ = $\frac{f(x)}{\int_{-\infty}^{\infty} f(t) dt}$

where $x$ represents the feature or outcome being observed, and $y$ is the class label.

#### Equation Explanation

The equation states that the probability of event x given event y ($P(x|y)$) can be calculated by:

1.  Dividing the conditional probability density function (PDF) of x given y (`f(x)` ) by
2.  Normalizing it with respect to its integral over all possible values of t, which represents the total likelihood.

#### Example

Suppose we have a dataset containing exam scores and their respective labels as "Pass" or "Fail." We want to calculate the probability density function for students who scored above average given that they passed:

Let's assume `f(x)` is the PDF of scores, where x is the score. The integral can be calculated using statistical methods.

```python
import numpy as np

# Define a sample dataset (exam scores and labels)
scores = [85, 90, 78, 92]
labels = ["Pass", "Pass", "Fail", "Pass"]

# Calculate the PDF of scores given that they passed
pdf_given_passed = [(score - np.mean(scores)) / (np.std(scores) * len(scores)**0.5) for score in scores if labels.index(label) == 'Passed']

# Normalize the PDF with respect to its integral over all possible values of t

from scipy.stats import norm
x_mean, x_stddev = 87, 10 # mean and standard deviation of scores given that they passed.

integral_value = norm.pdf(x_mean,x_stddev).evalf() 

pdf_given_passed /= integral_value 
```

### Real-World Applications

Probability density functions are used in various applications:

*   **Machine Learning**: to model the probability distribution of features and make predictions.
*   **Signal Processing**: for signal filtering, analysis, and processing.

By understanding how Probability Density Functions work, you can better analyze data-driven problems and develop more accurate models.