#MTRN/3060 

**Slides:**
[Week 3-lecture workshop-ilearn](Attachments/Week%203-lecture%20workshop-ilearn.pdf)

# Operators
The same forms for mapping points between frames can be interpreted as operators that translate points.
**Operators translate and rotate vectors on the same frame**

## Translation Operators
$$^{A}P_{2} = ^{A}P_{1} + ^{A}Q$$
Where Q is the translation vector

## Rotational Operators
$$^{A}P_{2} = R_{k}(\theta) ^{A}P_{1}$$
Using the rotation matrices from before


## Transformation Operators
$$^{A}P_{2} = T ^{A}P_{1}$$
T can rotate and translate at the same time



# Transform Arithmetic
$$^{A}P = ^{A}_{B}T ^{B}_{C}T ^{C}P$$

We have $^{C}P$ and wish to find $^{A}P$

We can have transforms that form a loop
$$^{U}_{D}T = ^{U}_{A}T ^{A}_{D}T$$
$^{U}_{D}T = ^{U}_{B}T ^{B}_{C}T ^{C}_{D}T$
