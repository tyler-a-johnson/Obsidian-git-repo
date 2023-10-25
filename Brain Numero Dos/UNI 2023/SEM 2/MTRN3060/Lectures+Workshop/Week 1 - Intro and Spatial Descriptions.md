#MTRN/3060 

**Slides:**
[[Attachments/Week 1-iearn-1 1.pdf]]

**Recent Robots:**
Industrial robotics:
http://www.youtube.com/watch?v=KBLEPlznHWY&feature=related
Arc welding robot: 
http://www.youtube.com/watch?v=5HphVrleXlQ&feature=related
ASIMO:
• http://www.youtube.com/watch?v=5HphVrleXlQ&feature=related
• http://www.youtube.com/watch?v=M4rgaLW163k&feature=related
Robot-Araigne:
http://www.youtube.com/watch?feature=endscreen&v=Mfjn79oiM0Q&NR=1
Hexapod Robot:
http://www.youtube.com/watch?v=-uKIDyFMTyQ&feature=related

# Description of position and orientation (chapter 2)
![[Attachments/Pasted image 20230805210746.png]]
Coordinate systems or "frames" are attached to the manipulator and to objects in the environment.

## Kinematics
![[Attachments/Pasted image 20230805211052.png]]
```ad-note
**Kinematics** is the science of motion that treats motion without regard to the forces which cause it.
Within the science of kinematics, one studies position, velocity, acceleration, and all higher order derivatives of the position variables.

```

## Inverse Kinematics
![[Attachments/Pasted image 20230805215311.png]]
```ad-note
Is used when we aim to use a given position and orientation of the end-effector of the manipulator to calculate all possible sets of joint angles that could be used to attain this given position and orientation.

```
For a given position and orientation of the tool frame, values for the joint variables can
be calculated via the inverse kinematics.
