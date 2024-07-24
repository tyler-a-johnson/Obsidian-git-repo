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
- increased awareness of the need to make research data openly available and the software and methods used to generate results
- [Open Science Foundation](https://osf.io), [Zenodo](https://zenodo.org), [Figshare](https://figshare.com)

## Data Reasoning in a Digital World
- Graphs can be a powerful way to share data with the public
- Choosing the wrong graph type, mislabeling axes, or using an inappropriate or inconsistent scale can affect the way data appears
[5 Ways Writers Use Misleading Graphs To Manipulate You](https://venngage.com/blog/misleading-graphs/)

# How Fermi Estimation can help you identify Bullshit
- Physicist Enrico Fermi Was a Master of Guesstimation
- Order of magnitude estimates of the expected answer
- Useful skill when evaluating problems
- Needs some knowledge of quantities in the world.
	- Size of things
	- population of countries
	- frequency of events
- Understand orders of magnitude - is it closer to 10, 100, 1000?

## How many piano tuners are in Sydney?
We first lay out what it is we need to know, then list some assumptions
- How often pianos are tuned?
- How long does it take to tune a piano?
- How many hours a year the average piano tuner works?
- How many pianos in Sydney?
### Assumptions
- **Assumption 1**: The average piano owner tunes his piano once a year. (*Just a guess since the average piano owner isn’t tuning only one time every ten years, nor ten times a year. One time a year seems like a reasonable guesstimate*.)
- **Assumption 2**: It takes 2 hours to tune a piano. A guess. Maybe it’s only 1 hour, but 2 is within an order of magnitude, so it’s good enough.
- **Assumption 3**: Let’s assume 40 hours a week. 40 hours a week x 50 weeks approximately 2,000-hour work year.
- **Assumption 4**: 2 pianos for every 100 people (Again a guess to include schools and institutions with pianos)
- **Assumption 5**: Sydney population approximately 5 million

### Lets Estimate
1. There are 5 million people in Sydney.
2. There are 2 pianos for every 100 people.
3. There are 100,000 pianos in Sydney (10^7 / 10^2 = 10^5)
4. Pianos are tuned once a year.
5. It takes 2 hours to tune a piano.
6. Piano tuners work 2,000 hours a year.
7. In one year, a piano tuner can tune 1,000 pianos (2,000 hours per year ÷ 2 hours per piano).
8. It would take 100 tuners to tune 100,000 pianos (100,000 pianos ÷ 1,000 pianos tuned by each piano tuner).

So approximately **100 piano tuners in Sydney**

## How much toilet paper does Australia use every year?
### Assumptions
- Average person uses 1 roll per week
- 1 sheet is approximately 10 cm long
- Australia's population approximately 25 million
- Earth's circumference approximately 40,000 Kilometre.

### Let's calculate
1. Average person consumes 50 rolls per year (1 roll per week x 50 weeks per year)
2. Length of 1 roll = 30m (300 sheets x 10 cm per sheet)
3. Average person consumption per year = 50 x 30m = 1.5 Kilometre
4. Total consumption in Australia per year = 25 million x 1.5 Kilometre = approximately 40 million Kilometre
5. 40 million Kilometre / 40, 000 Kilometre = 1000

**So we can wrap our Earth 1,000 times with 1 year consumption of toilet paper in Australia**