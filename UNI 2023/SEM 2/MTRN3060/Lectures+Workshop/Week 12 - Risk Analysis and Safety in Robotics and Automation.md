---
date: 2023-11-17
tags: 
status: Incomplete
Relevant Docs: 
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---
[Week 12](Attachments/Week%2012%20lecture%20workshop.pdf)
# Maths and Distilled Info
---



# Conceptual Info
---

## Risk Analysis
Systematic and scientific method to predict and subsequently assist to prevent occurrence of accident in a system.
It can be applied in all stages of design

**Event Consequence:** Degree of damage or loss from a failure
**Safety:** Judgement of risk acceptability for the system, it is based on avoidance of risk
**Qualitative Risk Analysis:** Potential loss is qualitatively estimated using linguistic scales, Low, Medium, High. A risk matrix is formed to categorize the level of the risk in form of frequency/likelihood of losses versus potential magnitude (amount) of losses in qualitative scales
**Quantitative Risk Analysis:** The quantitative risk analysis attempt to estimate the risk in form of probability/frequency of a loss.

### Assessment
*Three important question*
1. What can go wrong? : identifies the set of undesirable (e.g., incident) scenarios. 
2. What is the likelihood that it will go wrong? -Determine the probability or chances or frequencies of these scenarios. 
3. What are the consequences if it does go wrong?-Estimates the magnitude of potential losses.

*Method*
1. **Definition of System:** Define the system boundaries and objectives. collect information for assessing failure consequences.
2. **Identification of Hazards**: Identifies the possible hazards of concern for the defined system. Example: Toxins, corrosives, smoke, hire, dropping or moving object, hazardous processes
3. **Identification of System barriers**:
	1. Physically surround and isolate the hazard (passive structures)
	2. Minimize exposure to the hazard (protective gear, shields)
	3. Mitigate the hazardous conditions (eg, cooling, sprinklers, emergency evacuation system
4. **Event consequence assessment**: This step involves using analytical modelling tool to assess the hazard potential and subsequently translate into the potential consequences.
5. **Estimation of frequency (or Probability)**: This step involve analytical modelling tool to assess the hazard potential and subsequently translate into the potential consequences (harm to people, assets, contamination)
6. **Risk assessment and evaluation**: Assess risk by combining results of previous event likelihood and consequence steps for each failure scenario and associated consequences.
	1. Define risk acceptance criteria
	2. Develop strategies to avoid hazards, failure of barriers
	3. Optimize at the system level

## Types of Risks
Can be categorized by cause of risk or nature of loss or both
1. **Health Risk Analysis** Determine potential diseases and losses of life affecting humans, animals, and plants
2. **Safety Risk Analysis** Estimate potential harms caused by accidents (climate conditions, earthquakes, brush fires)
3. **Security Risk Analysis** Estimate access and harm caused due to war, terrorism, riot, crime
4. **Financial Risk Analysis** Determine potential individual, institutional and societal monetary losses
5. **Environment Risk Analysis** Determine losses due to noise, contamination, and pollution

## Risk Management
A practice involving coordinated activities to prevent, control, and minimizes losses incurred due to a risk exposure, and minimise losses incurred. Weighing alternatives and selecting appropriate actions by taking into account risk values, economic, legal, political, and technological issues.

- **Uncertainty** in risk analysis can be attributed to ambiguity, approximations and inconsistency in defining the architecture, variables, parameters and performances.
- **Uncertainty modeling** include characterization of the uncertainties, weaknesses or inaccuracies in the available data.
- Improper uncertainty characterization may lead to greater likelihood of an adverse event occurring.
- Uncertainty modeling started with the employment of safety factors that is followed by probabilistic analysis.
- Uncertainty can be classified as:
	- Objective uncertainty: It included the physical and statistical variability.
	- Subjective uncertainty: It included lack of knowledge, inconsistency in knowledge.

## Qualitative Risk Assessment
**Risk Matrices:** It is a two-dimensional presentation of likelihood and consequences of risk estimation. Qualitative scales for both dimensions to characterize the risk by categorizing probabilities and consequences on the two axes of a matrix.
![](Attachments/Pasted%20image%2020231119160357.png)


### HAZard and OPerability (HAZOP) Study
- Hazards arise in a plant due to deviations from normal behavior.
- A comprehensive HAZOP analysis identifies the all possible hazards and operability problems, recommended changes and studies etc.

1. Discrete the PFDs and P&IDs into a number of small process units. 
2. Select a study node.
3. Illustrate the design intent of the study node. 
4. Choose a specific process parameter. 
5. Combines a guide word with process parameter to suggest possible deviations. 
6. Find the possible causes and note any protective systems for the deviation. 
7. Examine the probable consequences for the deviation (if any). 
8. Recommend the porbable action iteam (what? by whom? by when?) 
9. Record all information in to the HazOp report.

**Word guide**
![](Attachments/Pasted%20image%2020231119160851.png)

**HazOp Report**
![](Attachments/Pasted%20image%2020231119160915.png)


## Quantitative Risk Analysis
Different techniques available for QRA, however, Fault Tree Analysis, Event Tree Analysis, and Bow-tie Analysis are the famous and user-friendly ones that are discussed here
![](Attachments/Pasted%20image%2020231119161144.png)

### Fault Tree Analysis (FTA)
- It defines multiple causes leading to an undesired event
- Used in accident investigation and in detailed hazard assessment
- FT is a logic diagram based on the principle of multi-causality defining all branches of events which could contribute to an accident or failure
- The relation between causes and an undesired event in FT is based on Boolean algebra basic operators

**Operators**
![](Attachments/Pasted%20image%2020231119162709.png)
![](Attachments/Pasted%20image%2020231119162739.png)
![](Attachments/Pasted%20image%2020231119162751.png)


**Rectangle**
![](Attachments/Pasted%20image%2020231119162811.png)
Fault event usually resulting from more basic fault event (it is a useful operator when we have a very large FT and we can break it into smaller FTs and integrate them with this operator.

**Circle (Primary basic event)**
![](Attachments/Pasted%20image%2020231119162937.png)

**Example**
![](Attachments/Pasted%20image%2020231119163214.png)

Let’s assume fuel is released because of any three different failures and the probabilities of these failures are 0.1, 0.02 and 0.09 Simply means if A or B or C fails, fuel is released.

![](Attachments/Pasted%20image%2020231119163242.png)
- Add the probabilities which sit below an OR gate (this isn’t strictly correct, but is a ‘rare event’ approximation) 
- Multiply the probabilities which sit below an AND gate In this example, combining probabilities upwards to the next level gives: 
- Probability of FUEL being present = 0.1 + 0.02 + 0.09 = 0.21 
- Probability of OXYGEN being present = 1 
- Probability of IGNITION being present = 0.2 + 0.05 + 0.1 = 0.35 So, the probability of fire to happen: 
- 0.21(1)(0.35) = 0.0735 (So, the probability of the top event which is the fire in this example is 0.0735

### Event Tree Analysis (ETA)
Its used to investigate the consequences of loss-making events in order to find ways of mitigating, rather than preventing, losses
1. Identify the primary event of concern 
2. Identify the controls that are assigned to deal with the primary event such as automatic safety systems, alarms on operator actions 
3. Construct the event tree beginning with the initiating event and proceeding through failures of the safety functions 
4. Establish the resulting accident sequences 
5. Identify the critical failures that need to be addressed

**Example**
![](Attachments/Pasted%20image%2020231119163706.png)
To calculate the frequency of each final outcome (labelled a to h in the diagram), you multiply along the branches, travelling from left to right from initiating event to final outcome. Thus, from the diagram, the frequency of the initiating event happening AND systems 1 AND 2 AND 3 working properly is I x S1 x S2 x S3. 
The sum of each success/failure probability pair, at each specific node adds up to 1. So, for example, S1 + F1 = 1. This means that if you are only given the value for success probability of a particular system, it is easy to calculate the failure probability for that same system, because the two will add up to give 1.

![](Attachments/Pasted%20image%2020231119164004.png)

## Human Factors
- Concerned with human efficiency and safety in man-machine system
- Human factors deals with the psychological, social, physical, biological and safety characteristics of a user and the system
- Goals: Human interaction with the system such that
	- Reduce errors
	- Increase production
	- Enhance safety and comfort
- **Human Error** is an undesirable result of a human decision or behaviour that reduces
	- effectiveness
	- safety
	- system performance
### Discrete Action Classifications
- Errors of omission
- Errors of commission
- Sequence errors
- Timing errors

- Skill based
	-  Controlled by sub-conscious behaviour and stored patterns of behaviour
	- Error of execution
- Rule-based
	- Applies to familiar or repetitive situations
- Knowledge based
	- Inadequate analysis or decision making

### Human Error Probability
- Human error quantification technique involves calculation of human error probability which is the measure of human reliability assessment (HRA)
	- Prevent death or injury of workers and general public
	- Avoid damage to assets
	- Stop harmful effects on the environment
	- Preventing damage to third parties

- Success likelihood index method (SLIM)
	- Evaluating the probability of a human error occurring throughout the completion of a specific task
	- Measures to reduce the likelihood of errors occurring within a system and therefore lead to an improvement in the overall levels of safety.
		1. Selection of expert panel
		2. Definition of situation and subsets
		3. Elicitation of PSFs
		4. Rating of tasks on the PSF scale
		5. The calculation of Success Likelyhood Index (SLIs)
		6. Conversion of SLIs into probabilities
		7. Calculation of HEP
			$Log(HEP) = a(SLI) + b$
			Solve to find A and B
- Human error assessment and reduction technique (HEART)
	1. Identifying the full range of sub-tasks
	2. Determining a nominal human unreliability score for the particular task (consult experts/resources)
	3. Determine EPCs (error producing conditions) Get the total HEART effect of each EPC
	4. Get experts assessed proportion of effect (0 to 1)
	5. Calculate effect = ((Max effect = 1)$*$proportion of effect)+1
	6. Calculate final HEP as a product of all calculated effect and nominal human reliability
- Absolutely probability judgement (APJ)
- Paired comparison
- Technique for human error rate prediction (THERP)

## Maintenance Types
![](Attachments/Pasted%20image%2020231119170931.png)
**Reactive**
- Basically "run till it breaks"
- No actions or efforts are taken to maintain the equipment 
	- Low cost
	- Less staff

	- Increased cost of unplanned downtime
	- Increased labour cost, especially with overtime
	- Cost involved with repair or replacement of equipment
	- Secondary equipment or process damage from equipment failure

**Preventative**
- Preventative maintenance, actions performed on time or machine based schedule that detect preclude or mitigate degradation of a component or system. 
- Sustaining or extending its useful life

	- Cost effective in many capital processes
	- Flexibility allows for the adjustment of maintenance
	- Increased component life cycle
	- Energy saving
	- 12% to 18% saving s over reactive

	- Labour intensive
	- Can include unneeded maintenance
	- Potential for incidental damage with unneeded maintenance

**Predictive**
Detects the onset of system degradation (lower performance) allowing casual stressors to be eliminated or controlled. Prior to any significant deterioration in the component.
- Predictive maintenance differs from preventive maintenance by basing maintenance need on the actual condition of the machine rather than on some pre-set schedule
	- Increase component operational life/availability 
	- Allows for predictive corrective action 
	- Decrease in cost for parts and labours 
	- Better product quality 
	- Improved worker and environmental safety 
	- Improved worker morale 
	- Energy saving 
	- Estimated 8% to 12% cost savings over preventive maintenance program

	- Increased investment in diagnostic equipment 
	- Increased investment in staff training 
	- Saving potential not readily seen by management


# Additional Content
---
