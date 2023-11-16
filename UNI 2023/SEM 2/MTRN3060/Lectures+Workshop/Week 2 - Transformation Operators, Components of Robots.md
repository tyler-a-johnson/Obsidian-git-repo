#MTRN/3060 

**Slides:**
[Week 2 lecture.workshop ilearn](Attachments/Week%202%20lecture.workshop%20ilearn.pdf)

**Lecture:**
- Describe object in 3D space
- Map object in 3D space
- Transformation operators
- Transformation matrices

**Practical:**
- Lab safety
- Robotic arm
- Gripper safety
- Movement and coordinates

# Position
Define the point "P" relative to coordinate frame {A}
![Pasted image 20230803130517](Attachments/Pasted%20image%2020230803130517.png)

Individual elements of a vector are given subscripts x, y, z
$$^{A}P = \begin{bmatrix}   P_{x} \\  P_{y} \\ P_{z}   \end{bmatrix}$$
These values of P read like: $P_{x} \rightarrow$ The **X** coordinate of point **P** relative to frame **A**.

# Orientation
We define the orientation of an object relative to the coordinate frame {A} regardless of position, A new frame {B} on the object is required, positioned at P.

Unit Vector {B} are $\hat{X}_{B}, \hat{Y}_{B}, \hat{Z}_{B}$

Written relative to frame {A}: $^{A}{\hat{X}_{B}}$ $^{A}{\hat{Y}_{B}}$ $^{A}{\hat{Z}_{B}}$ 
![Pasted image 20230810123550](Attachments/Pasted%20image%2020230810123550.png)
Our rotation matrix can be defines as below:
$$^{A}_{B}R = [^{A}{\hat{X}_{B}},^{A}{\hat{Y}_{B}},^{A}{\hat{Z}_{B}}] = \begin{bmatrix}   r_{11} & r_{12} & r_{13}  \\ r_{21} & r_{22} & r_{33} \\ r_{31} & r_{32} & r_{33}  \end{bmatrix} $$
$$ = \begin{bmatrix}  \hat{X}_{B} \cdot \hat{X}_{A} &\hat{Y}_{B} \cdot \hat{X}_{A} &\hat{Z}_{B} \cdot \hat{X}_{A}  \\ \hat{X}_{B} \cdot \hat{Y}_{A} & \hat{Y}_{B} \cdot \hat{Y}_{A} &\hat{Z}_{B} \cdot \hat{Y}_{A} \\ \hat{X}_{B} \cdot \hat{Z}_{A} & \hat{Y}_{B} \cdot \hat{Z}_{A} & \hat{Z}_{B} \cdot \hat{Z}_{A}  \end{bmatrix} $$

Since the our columns are orthogonal, the inverse of this matrix is the same as its transpose. We take the transpose to reverse our frame reference.
$$^{A}_{B}R=^{B}_{A}R^{-1}= ^{B}_{A}R^T $$

We can also say:
$\hat{X}_{A} \cdot \hat{X}_{B} = \cos{\alpha}$

$$^{A}_{B}R = \begin{bmatrix}  \cos \hat{X}_{B} , \hat{X}_{A} & \cos \hat{Y}_{B} , \hat{X}_{A} & \cos \hat{Z}_{B} , \hat{X}_{A}  \\ \cos \hat{X}_{B} , \hat{Y}_{A} & \cos \hat{Y}_{B} , \hat{Y}_{A} & \cos \hat{Z}_{B}, \hat{Y}_{A} \\ \cos \hat{X}_{B} , \hat{Z}_{A} & \cos \hat{Y}_{B} , \hat{Z}_{A} & \cos \hat{Z}_{B} , \hat{Z}_{A}  \end{bmatrix} $$
Where where $X_{B},X_{A}$ is the angle between the two axis
We can use these to simplify our rotational matrices.

## Rotation Matrices in 3D
![Pasted image 20230810125357](Attachments/Pasted%20image%2020230810125357.png)
$$^{A}_{B}R = ^{B}_{A}R^{-1} = ^{B}_{A}R^T$$

**$R_{x}$ is meant to be at the bottom**
These are general forms for rotating around a single axis, the zeroes and ones in this case do not change. And the angle $\theta$ is the number of degrees being rotated. We use the *right hand rule* to determine the direction of the rotation.

# Description of a Frame
A frame can be used as a description if one coordinate system relative to another. They have both **position** and *orientation*. Positions can be represented by a frame whose rotation-matrix part is the identity matrix, and whose vector part locates the point being described.
![](Attachments/Pasted%20image%2020231116155804.png)
$$\{B\} = \{ ^{A}_{B}R, ^{A}P_{BORG} \}$$

## Mapping Involving General Frames
Define the position and orientation of an object relative to coordinate frame {A}. A new frame {B} on the object is required
