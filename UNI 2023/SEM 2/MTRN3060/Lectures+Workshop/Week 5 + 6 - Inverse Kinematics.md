---
date: 2023-11-16
tags: 
status: Incomplete
Relevant Docs:
  - "[[UNI 2023/SEM 2/MTRN3060/Lectures+Workshop/Attachments/Workshop Lecture week 5.pdf|Week 5]]"
  - "[[UNI 2023/SEM 2/MTRN3060/Lectures+Workshop/Attachments/Week 6 Lecture workshop class.pdf|Week 6]]"
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---

# Maths and Distilled Info
---

## Kinematics
The central topic in kinematic is a method to compute the position and orientation of the manipulator’s end-effector relative to the base of the manipulator as a function of the joint variables. 
![](Attachments/Pasted%20image%2020231117111439.png)
### Joints
![](Attachments/Pasted%20image%2020231117111547.png)
**Revolute**
Single-axis rotational joints that connect two rigid links together

**Prismatic**
Single-axis translational joints that connect two rigid links together

### Link-Joint Description
![](Attachments/Pasted%20image%2020231117111904.png)
We need four parameters, two describing the link and two describing the joint.

For any two axes in 3D, there exists a well-defined measure of distance between them. This distance is measured along a line that is mutually perpendicular to both axes. This mutual perpendicular always exists.

It is unique except when both axes are parallel, in which case there are many mutual perpendiculars of equal length.

Here is a mechanical drawing of a robot link. If this link is used in a robot with bearing A. Used for the lower-numbered joint, give the length and twist of this link. Assume that holes are centered in each bearing.
![](Attachments/Pasted%20image%2020231117112543.png)

**Description**
A robotic manipulator can ontain one or more joints, Joints are described using two parameters.

Neighboring links have a common joint axis between them. One parameter of interconnection has to do with the distance along this common acis from one link to the next. This parameter is called the **joint offset**.
$$\text{For revolute joint, } \theta \text{ is Variable and d is constant}$$
$$\text{For prismatic joint, } d \text{ is Variable and } \theta \text{ is constant}$$

## Denavit-Hartenberg Notation
Any robot can be described kinematically by giving the values of four quantities for each link. Two describe the link itself, two describe the link's connection to a neighboring link.

In the usual case of a revolute joint, $\theta_{i}$ is called the **joint variable** and the other three are **fixed link parameters**. For prismatic joints. $d_{i}$ is the joint variable, and the other three quantities are fixed link parameters. The definition of mechanisms by means of these quantities is a convention usually called the **Denavit-Hartenberg Notation**.
![](Attachments/Pasted%20image%2020231117113113.png)
$$\text{For relative joint, } \theta \text{ is Variable and d is constant}$$
$$\text{For prismatic joint, }d \text{ is Variable and } \theta \text{ is constant}$$

For convenience and to reduce calculations, it is preffered to set the following parameters to zero (to avoid extra calculations) $a_{0}=a_{n}=\alpha_{0}=\alpha_{n} = 0$. 


## Procedure for Frame Assignment
*attach frame {i} to link "i"*

1. **Z-Axis**: Assign all z-axis along the axis of the rotation (for revolute joints) or axis of translation (for prismatic joints). Choose either of the two directions.
![](Attachments/Pasted%20image%2020231117114536.png)

2. **Frame Origins**: Identify the common perpendicular between z-axis, or the point of intersection between them. These intersections will be the frame origins.
![](Attachments/Pasted%20image%2020231117114711.png)

3. **X-Axes**: Assign all x-axes starting from the frame origin and pointing towards the next joint along the common perpendicular.
![](Attachments/Pasted%20image%2020231117115018.png)

4. **Y-axes**: Assign all y-axes to complete the [Right Hand Rule](../../../../Distilled%20Notes/Right%20Hand%20Rule.md) (Thumb faces Z, four fingers extended face X)
![](Attachments/Pasted%20image%2020231117115456.png)

5. **Frame {0} (ground frame-does not move):** Assign frame {0} to match frame {1} when the first joint variable is zero. This is recommended for convenience so that some DH parameters can be set to zero to reduce calculations. Otherwise, frame {0} con be assigned arbitrarily.
6. **Frame {n}-or frame gripper**: Assign frame {n} such that as many DH parameters can be set to zero. 

### Extracting DH Parameters

$L_{i}$ : The distance from $z_{i}$ and $z_{i+1}$ along $x_{i}$
![](Attachments/Pasted%20image%2020231117120539.png)

$\alpha_{i}$ : The angle from $z_{i}$ and $z_{i+1}$ about $x_{i}$
![](Attachments/Pasted%20image%2020231117120628.png)

$d_{i}$ : The distance $x_{i-1}$ and $x_{i}$ along $z_{i}$
![](Attachments/Pasted%20image%2020231117120751.png)
$\theta_{i}$ : The angle from $x_{i-1}$ and $x_{i}$ about $z_{i}$
![](Attachments/Pasted%20image%2020231117120848.png)


$$L_{i} = \text{the distance from } \bar{Z}_{i} \text{ to } \hat{Z}_{i+1} \text{ measured along } \hat{X}_{i}$$
$$\alpha_{i} = \text{the angle from } \hat{Z}_{i} \text{ to } \hat{Z}_{i+1} \text{ measured about } \hat{X}_{i}$$
$$d_{i} = \text{ the distance from} \hat{X}_{i-1} \text{ to } \hat{X}_{i} \text{ measured along } \hat{ Z}_{i}$$
$$\theta_{i} = \text{ the angle from } \hat{X}_{i-1} \text{ to } \hat{X}_{i} \text{ measured about } \hat{Z}_{i}$$


## Forward Kinematics
![](Attachments/Pasted%20image%2020231117205109.png)
$$^{i-1}_{i}T = R_{X} (\alpha_{i-1})D_{X}(a_{i-1})R_{Z}(\theta_{i})D_{Z}(d_{i})$$
![](Attachments/Pasted%20image%2020231117205234.png)
Once the frames have been defined and the corresponding link parameters found, developing kinematic equations is straightforward. rom the values of the link parameters, the individual link-transformation matrices can be computed. Then, the link transformations can be multiplied together to find the single transformation that relates frame {N} to frame {0}:
$$^{0}_{N}T = ^{0}_{1}T ^{1}_{2}T ^{2}_{3}T \dots ^{N-1}_{N}T$$

![](Attachments/Pasted%20image%2020231117205617.png)

### Actuator Space, Joint Space, and Cartesian Space
The position of all the links of a manipulator of n degrees of freedom can be specified with a set of n joint variables (n×1 joint vector).
The space of all such joint vectors is referred to as **joint space.**
*If a robotic manipulator has 5 joints, then the join space will have 5 variables.*

**Cartesian space:** is the space that contains the Cartesian variables where the end-effector can travel through within the workspace. 
*For a planar robot, the Cartesian space will have 3 variables (Dx, Dy, Rz). For a full 3D robot, the Cartesian space will have 6 variables (Dx, Dy, Dz, Rx, Ry, Rz), which is the maximum number of Cartesian space variables.*


## Inverse Manipulator Kinematics
Given the desired position and orientation of the tool relative to the station, how do we compute the set of joint angles which will achieve this desired result.
![](Attachments/Pasted%20image%2020231117210757.png)
Solvability of inverse Kinematics Problems
a. Existence of a solution
b. Workspace: is a volume of space that the end effector can reach
	For solution to exist, the end effector goal must be within the workspace
c. Degrees of Freedom (DOF): Are the number of independent variable in a manipulator
	For a solution to exist, the number of joints should be more than or equal to the number of independent Cartesian coordinates to be controlled at the end effector


### Multiple Solutions
The number of solutions depends upon the 

# Conceptual Info
---



# Additional Content
---
