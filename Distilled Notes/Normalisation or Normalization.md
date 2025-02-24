---
date: 2024-11-10
status: Incomplete
Relevant Docs: []
Relevant Notes: []
Relevant Links:
---

Normalization is a crucial step in data preprocessing, particularly when preparing data for machine learning models. It involves scaling the values of features to ensure they contribute equally to the model's performance.

#### Types of Normalization:

1. **Min-Max Scaling:** ***Normally used in COMP2200***
    - **Definition:** Subtracts the minimum value from every feature and then divides by the range (max-min) of that feature.
    - **Formula:** $$x' = \frac{x - x_{\text{min}}}{x_{\text{max}} - x_{\text{min}}}$$
    - This method scales features to a fixed range, typically [0, 1].
2. **Z-Score Standardization:**
    
    - **Definition:** Subtracts the mean and divides by the standard deviation.
    - **Formula:** $z = \frac{x - \mu}{\sigma}$, where $\mu$ is the mean and $\sigma$ is the standard deviation.
    - This method ensures that features have a zero mean and unit variance.
3. **Decimal Scaling:**
    
    - **Definition:** Moves the decimal point of values ( d ) places to the left, where $d = \lfloor \log_{10} (\max |x|) \rfloor + 1$
    - This method ensures that all values are between -1 and 1.
4. **Max-Abs Scaling:**
    
    - **Definition:** Scales each feature by its maximum absolute value.
    - **Formula:** $( x' = \frac{x}{\max |x|} )$.


#### Importance of Normalization:

- **Improves Model Performance:** Ensures that features with larger scales do not dominate those with smaller scales in the model.
- **Prevents Convergence Issues:** Helps algorithms converge faster and more reliably, especially when using gradient-based optimization methods.

#### Implementation Example in Python:

```python
pythonCopy codefrom sklearn.preprocessing import MinMaxScaler, StandardScaler

# Sample data
data = [[-1, 2], [-0.5, 6], [0, 10], [1, 18]]

# Min-Max Scaling
scaler = MinMaxScaler()
scaled_data_minmax = scaler.fit_transform(data)
print("Min-Max Scaled Data:")
print(scaled_data_minmax)

# Z-Score Standardization
scaler = StandardScaler()
scaled_data_zscore = scaler.fit_transform(data)
print("\nZ-Score Standardized Data:")
print(scaled_data_zscore)pythonCopy code
```

#### Conclusion:

Normalization is essential for ensuring that all features contribute equally to the model and can significantly improve the performance of machine learning algorithms. The choice of normalization technique depends on the specific requirements and characteristics of your dataset.

By normalizing data, you ensure that each feature has a fair chance to influence the model's predictions, leading to more robust and reliable results.