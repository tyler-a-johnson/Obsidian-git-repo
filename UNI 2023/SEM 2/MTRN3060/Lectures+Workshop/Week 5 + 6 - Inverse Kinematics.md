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
4. **Y-axes**: Assign all 

# Conceptual Info
---



# Additional Content
---
