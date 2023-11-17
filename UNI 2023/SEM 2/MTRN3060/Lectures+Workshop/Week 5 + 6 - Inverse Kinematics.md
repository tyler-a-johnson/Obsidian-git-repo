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



# Conceptual Info
---



# Additional Content
---
