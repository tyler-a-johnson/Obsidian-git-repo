---
date: 2023-10-12
tags:
  - "#MTRN/3060"
status: Incomplete
Relevant Docs:
  - "[Week 10, Lecture workshop](Attachments/Week%2010,%20Lecture%20workshop.pdf)"
Relevant Questions: []
Relevant Notes: []
Practical Docs: 
Relevant Links:
---
[Week 10](Attachments/Week%2010,%20Lecture%20workshop-1.pdf)
# Maths and Distilled Info
---




# Conceptual Info
---

## Categories of Human-Robot Interaction (HRI)

**Cat 1: Remote Control of the Robot**

- Human cognitive capabilities
- Human perception capabilities
- Joystick control or verbal commands.

- Date back to when robots were used to handle nuclear materials
- Remote control of UAVs as if they were in the cockpit

**Cat 2: Supervisory Control of Robots**
- Not tasking the robot at the lowest level, but supervising the robot / robots
1. *Task Planning*: Can define and plan task for the robot. This involves specifying what the robot needs to do, the sequence of actions, and any constraint/priorities
2. *Monitoring*: Monitors the robot's state and progress to ensure tasks are executing properly. Detects errors and can initiate corrective action.
3. *Adaptation*: Supervisory control allows for adaptive behaviour. If the robot encounters unexpected obstacles or changes . The supervisory system can modify the plan and set new instructions
4. *Human Interaction*: Humans are usually able to interact with supervisory control to provide high level guidance.
5. *Coordination*: In multi-robot systems, supervisory control can coordinate the actions of multiple robots to ensure they work together.

**Cat 3: Humans as a Passenger or Bystander**
- Think self driving car
- May have some supervisory function
- Typically designed for little interaction, doesn't require complex understanding


**Cat 4: Robot For Social Interaction**
Useful for:
![Pasted image 20231012133349](Attachments/Pasted%20image%2020231012133349.png)


## Define Human Robot Integration (HRI)

**Levels of Control**
![Pasted image 20231012134808](Attachments/Pasted%20image%2020231012134808.png)

**Levels of Autonomy**
![Pasted image 20231012134840](Attachments/Pasted%20image%2020231012134840.png)
**The measures of efficacy of an interaction**
- The way in which the information exchange supports the human situational awareness of that system and of the progress through the task.
- The extent to which the interface and information exchange can enable a common ground or understanding.

### Attributes Affecting HRI
![Pasted image 20231012135233](Attachments/Pasted%20image%2020231012135233.png)
**Information Exchange between Human and Robot**



| Seeing          | Hearing                            | Touching and Tactile Interaction |
| --------------- | ---------------------------------- | -------------------------------- |
| Visual Displays | Speech and natural  language media | Physical Interaction                                 |
| Gestures        | Nonspeech audio       | Haptics       |

**Structure of the Team**
![Pasted image 20231012135618](Attachments/Pasted%20image%2020231012135618.png)

**Adaptation, Learning and Training**
![Pasted image 20231012135727](Attachments/Pasted%20image%2020231012135727.png)

**Shaping the task and environment**

Introducing tech fundamentally changes the way that humans do tasks that they might have previously done on their own.

*Task Shaping*:
- Emphasizes the importance of considering how the new task should be done when the technology is introduced
- Involves designing the tech and co-designing the task to be performed by the system

*Environmental Shaping*
- Standard industrial robots need highly structured environments to perform repeatable actions.
	- Need to know where things are
	- Need to be set up in a structured way
- Employing more autonomy on the robots helps in introducing additional flexibility

## Metrics for Human-Robot Interaction (HRI)
- Metrics help determine how and to what extent a system is compatible with people who interact with it through its design and life cycle.
- *The human-robot interaction community has not reached a strong consensus on standard metrics or benchmarks*
![Pasted image 20231012140244](Attachments/Pasted%20image%2020231012140244.png)


## Singularity
A "singularity" refers to a specific configuration or position in which the robot arm loses one or more degrees of freedom, making it unable to move or control its end effector effectively.
- **Momentary Singularity:** Is a term used in robotics to describe a brief and temporary situation where a robot arm or manipulator passes through a singular configuration during its motion. But does not remain stuck in that position.
- **Permanent Singularity**: Refers to a situation where a robot arm or manipulator becomes mechanically locked or reaches a config where it cannot continue.

A *singularity* will happen when the Jacobian is not invertible
$$v = J \dot{\theta}$$
$$$$
$$\dot{\theta} = J^{-1}v$$

If $Det(J) \neq 0$  J is invertible
If $Det(J) \approx 0$ J is invertible but dangerous joint velocities will occur
If $Det(J) = 0$ J is not invertible, there is a singularity

**A momentary singularity** refers to a specific configuration or state in which a robotic manipulator experiences a momentary loss of control over a degree of freedom, or behaves unexpectedly. This occurs when the robots joints align in a way that results in mathematical singularities.

A singularity is a point where the **Jacobian Matrix** becomes singular, meaning it is not invertible. When this happens the robots control system cannot uniquely determine how to move the end effector in response to certain joint motions. As a result, the robot may exhibit erratic behavior, and it can be challenging to control movement.

Typically robot control algorithms and software are designed to avoid or navigate through singularities to ensure stable operation. This may involve:
- Joint limit avoidance
- Joint velocity
- Acceleration constraints
- Or trajectory planning
To prevent the robot from encountering and getting stuck in singular configs. It is important to identify and handle singularities.

When a singularity occurs, velocities and angles tend towards infinity, making the robot behave unexpectedly. They should be avoided.







****

# Additional Content
---
