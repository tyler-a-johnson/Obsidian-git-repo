---
date: 2024-07-24
tags:
  - COMP2200
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---

[Lecture Slides](Attachments/Lecture%20Week%201%20(2024-S2).slides.html)

# Intro

## Data Science - Hype Cycle
> [Gartner Hype Cycle](https://www.gartner.com/en/research/methodologies/gartner-hype-cycle) provide a graphic representation of the maturity and adoption of technologies and applications, and how they are potentially relevant to solving real business problems and exploiting new opportunities.
> 
> Gartner Hype Cycle methodology gives you a view of how a technology or application will evolve over time, providing a sound source of insight to manage its deployment within the context of your specific business goals.

Each Hype Cycle drills down into the five key lifecycle phases
- Innovation Trigger
	- Potential tech breakthrough 
	- **early proof of concept stories** and media interest
	- Often no useable product, commercial viability is unproven.
- Peak of Inflated Expectations
	- Early publicity produces success stories - often **accompanied by scores of failures**
	- **Some** company action and adoption
- Trough of Disillusionment
	- Interest wanes as **implementations fail to deliver**
	- Producers fail or move on
	- Investments continue only if the surviving providers improve their products
- Slope of Enlightenment
	- More applications of the tech are found and are adopted
	- Second and third gen products appear
	- More pilots funded
	- Conservative companies remain cautious
- Plateau of Productivity
	- Mainstream adoption takes off
	- Better criteria for understanding provider viability
	- Market applicability and relevance pay off


## Four types of Data Science Jobs
1. **Data Analyst** - Pulling data out of SQL databases, Excel, data visualisation and reporting dashboards, A/B testing, analytics
2. **Data Engineer** - Needs strong software engineering skills, managing company data traffic and infrastructure
3. **Machine Learning** - Companies where the data is the product, machine learning on large data sets
4. **Generalist** - For general companies looking to manage data


![](Attachments/Pasted%20image%2020240724194520.png)


## Data Scientist Skills
- Knowledge in Stats, Data Mining, and Machine Learning
- Open source tools such as Python
- Data Visualisation
- Data warehousing and architecture
- Coding skills
- Soft skills like communication, teamwork, ethical factors, etc.

```ad-note
title: What Is Data Science?
At its core, data science involves using automated methods to analyze massive amounts of data and to extract knowledge from them. With such automated methods turning up everywhere from genomics to high-energy physics, data science is helping to create new branches of science, and influencing areas of social science and the humanities.

```


# Interpretation and Reproducibility
- Conclusions should be based on **observations of evidence**
- If I present a graph, I should also present the sources of data that I used to generate the graph.
- did you use all of the data or did you exclude some observations?
- Did you smooth, scale or otherwise manipulate the data?
- What classification, clustering or modelling methods did you use?
- How did you gather the data?

## Reproducibility
- Increasingly important goal in Science and Data Science is playing a big role to achieve it.
- [Replication crisis - Wikipedia](https://en.wikipedia.org/wiki/Replication_crisis)
- 