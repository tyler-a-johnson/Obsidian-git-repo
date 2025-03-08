---
date: 2025-03-08
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
# Bias

***What is Human Cognitive-Affective Bias?***

**De-contextualised definition**: The notion of ‘bias’ refers to a systematic deviation from a moral, statistical, or social standard in situations of assessment and decision-making. *(Fazelpour & Danks, 2021).*


**Contextualised definition**: The notion of ‘bias’ refers to the unfair and unjust treatment of members of (intersecting) structurally oppressed groups in situations of assessment and decision-making. 

**‘Oppression’** is a structural, multi-faceted notion that captures “the vast and deep injustices some groups suffer as a consequence of often unconscious assumptions and reactions of well-meaning people in ordinary interactions, media and cultural stereotypes, and structural features of bureaucratic hierarchies and market mechanisms.” *(Young, 1990, p. 41)*

***What is Algorithmic bias?***
**De-contextualised definition**: “algorithmic bias is simply systemic deviation in algorithmic output, performance, or impact, relative to some norm or standard. An algorithm can be morally, statistically, or socially biased (or other), depending on the normative standard used.” *(Fazelpour & Danks, 2021, p. 2)*

**Contextualised definition**: The notion of ‘bias’ refers to the unfair and unjust treatment of members of (intersecting) structurally oppressed groups as a result of algorithmic decision-making *(pace Johnson 2021)*.

Correctional Offender Management Profiling for Alternative Sanctions (COMPAS) an example of algorithmic bias.

https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing

# The Neutrality Thesis

According to the neutrality thesis: "technological artifacts such as algorithms do not embody or implement values, and so their use is the only appropriate locus of ethical evaluation.” *(Fazelpour & Danks, 2021, p. 3; italics in original)*

Value neutrality, and thus the absence of bias, is unfeasible for at least two resons:
1. “algorithms make possible certain kinds of decisions and capabilities, and so embody the value that those decisions or capabilities are important.” *(Ibid.)*
2. "algorithms implement values because they are almost always optimized for performance relative to a standard” *(Ibid.)*. This standard is in itself a value judgment.

- Work on algorithmic bias shares assumptions and insights with work in other areas of philosophical research
- Recent research on situated cognition and affectivity suggests that many resources and practices in the socio-cultural environment are not value neutral
- They manifest and perpetuate forms of oppression, including things and technologies.
- If decision-making is not value neutral, then at what stages can biases become an issue?

## Algorithmic Decision-Making from Problem Specification to Deployment

![](Attachments/Pasted%20image%2020250308222235.png)

### Sources of Algorithm Bias - Problem Specification
- What exactly is the decision making problem that needs to be solved?
- Problem specification: “requires thinking about our overall aims, the actions available to us, and ways of using the algorithm to help achieve those aims.” *(Fazelpour & Danks, 2021, p. 4)*
- What are the values and standards that contribute to the specification of the decision-making problem at issue?
- Which target variables associated with persons and groups are most likely to be affected, intentionally or unintentionally, by algorithmic decision-making?
- Problem specification can lead to disparate impacts, whereby “members of a protected group are differentially impacted relative to a (more) dominant group.” *(Ibid.)*.

### Sources of Algorithm Bias - Training Data
- By definition, machine learning (ML) algorithms “[…] output models that partially ‘mirror’ the statistics in the historical data […].” *(Fazelpour & Danks, 2021, p. 6)*
- Biases in the training data will be reflected in the outcomes of algorithmic decision- making. These can occur for at least two, often co-occurring reasons:
	1. They can “result from existing biases in real-world systems that are measured in the data.” *(Ibid.; see also Johnson, 2021)*
	2. They can “arise from limitations and biases in our measurement methods” (e.g., non-representative training data). *(Ibid.)*

### The problem of Ground Lies
- Ideally, ML algorithms would represent and predict the so-called **ground truth**, patterns in the real world in an accurate and truthful way.
- Many training data are not representative of complex, socially shaped real-world phenomena across a wide range of domains (e.g., health care, employment, immigration, law enforcement) *(see Johnson, 2021).*
- Rather than reaching ground truths, algorithmic decision-making might lead to algorithmic biases that produce new ground lies *(Bender, 2024).*
- “If we do not actively work to curate the data sets that we want, then we will be collecting data sets that are representative of dehumanizing ideologies such as white supremacy and calling lies ‘ground truth’.” *(Bender, 2024, p. 116)*

### Sources of Algorithm Bias - The Proxy Problem
- Even if ground lies are avoided, algorithm bias can be enabled by the proxy problem *(Johnson, 2021)*
- The proxy problem consists in the perpetuation of oppressive biases through the collection and pre-processing of proxy attributes.
- They are defined as “seemingly innocuous attributes that correlate with socially sensitive attributes, serving as proxies for the socially-sensitive attributes themselves.” *(Ibid., p. 9952)*
- Proxy attributes in the training data contribute to the perpetuation of biases against members of structurally oppressed groups.

### Sources of Algorithm Bias - Modelling and Validation
- Biases at the stage of problem specification re-occur at the stage of modelling and validation.
- What are the success criteria of algorithmic decision-making, given the specification of a target domain, goals, values, and standards *(see Fazelpour & Danks, 2021)*?
- What values and norms do different stakeholders (e.g., developers, end-users) request to be reflected in the decision-making algorithms (see Ibid.)?
- Model validation and optimisation might come at the cost of exacerbating ground lies and the proxy problem.

### Sources of Algorithm Bias - Deployment
- Algorithmic decision-making can perpetuate or existing biases in high-stakes cases of deployment.
- Biases occurring at the stages of problem specification, training data selection and pre-processing, and modelling and validation influence, decision-making outcomes in specific cases of deployment.
- The question is not only what is employed, but how its employed.

## Mitigating Algorithmic Bias

### Fairness through Unawareness
The fairness through unanwareness position entertains the hope that “an algorithm could not possibly be biased about property X  if it is never told about whether an individual possesses X.” *(Fazelpour & Danks, pp. 8-9)*

This strategy fails because of the proxy problem *(Johnson, 2021)*: “Other variables in the input data will often be correlated with, and so serve as proxies for, protected attributes; even when these sensitive attributes are not explicitly included in the data, they are ‘redundantly encoded’ in these proxies.” *(Ibid., p. 9)*


### Fairness through Mathematical Fairness Measures
1. **Individual Measures:** Mathematical representation of 'treat similar cases similarly'. It is unclear how similarities of social properties can be quantified.
2. **Statistical Measures:** Mathematical representation of “statistical disparities (e.g., accuracy, or error rates relating to sensitivity or specificity) between algorithmic predictions across different protected attributes that we typically think morally ought not impact decisions.” *(Fazelpour & Danks, 2021, p. 9)* However, these measures are at times incompatible with each other and might not be able to do justice to intersectional social attributes.
3. **Causal or counterfactual measures:** Mathematical representation of “the causal reasons for patterns of injustice, including what would have occurred (counterfactually) if the biases had not been present.” (Fazelpour & Danks, 2021, p. 10) However, injustices are the result of complex historically entrenched, temporally extended structural processes of domination and oppression. Mapping and mathematically representing the causal dynamics underlying biases leading to the perpetuation of these injustices is not straightforward.