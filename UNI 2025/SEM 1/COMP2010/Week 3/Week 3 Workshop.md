---
date: 2025-03-11
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---


3. **Invariants: Any old thing**  Predicates belong between two lines of code. Create six predicates for each possible slot (before line one, between line one and two, ...., between line four and five, after line five) of the code in question 2. Don’t worry about how useful your predicates are, just that they are true

***USE MATHS NOTATION - REVISE THIS***
```java
// True
char x = << ? >>; 
// True
LinkedList head = << ? >>; 
```
head = null | head $\neq$ null
```java
LinkedList temp = head ; 
```
temp = null | temp $\neq$ null

```java
while ( temp != null && temp.value != x) { 
```
$temp \neq null \cap temp.value \neq x$
```java
	temp = temp.next ; 
```
$temp.next \neq null \vee  temp.next \neq null$
```
}
```
$temp = null \vee temp.value = x$



4. **Invariants - Simple Program** Predicates are ”Invariants” if they are true in every slot of the program. Consider the following invariant of the program above: 
*For all nodes n lying between head and temp (but not including temp) it is the case that n.value != x.* 

In the case that temp is null because it has traversed the whole list, then take this statement to mean “all nodes in the list”

1. x is not contained in the LinkedList head.
2. the LinkedList contains x, and temp points to the object in the LinkedList containing x.
3. At the end of the loop, temp either points to the object with a value equal to x, or is null.


5 .**Loop invariants: Post conditions**
Consider the variations below of the sum algorithm discussed in lectures. In each case use the loop invariant given and work out the post-condition by putting the invariant together with the ”negation of the guard”. Once you have the post-condition, put into words what the loops do. **You may assume that the loop invariant given has been checked and that it is indeed a loop invariant.**

```java
int i = 0;
int sum = 0;
while ( i <= N ) {
	i = i+1;
	sum = sum + i;
}
```
Loop invariant: $sum = \sum_{j=0}^{j = i} j$
Post condition:
$$sum = \sum_{j=0}^{j> N} j$$
This loop returns the sum of all digits between 0 and N, N inclusive.


```java
int i = 1;
int sum = 0;
while (i < N ){
	sum = sum + i;
	i = i + 1;
}
```
Loop invariant: $sum = \sum_{j=0}^{j=i-1} j$
Post Condition:
$$sum = \sum_{j=0}^{j\geq N-1} j$$


```java
int i = 1;
int sum = 0;
while ( i < N+1 ) {
	sum = sum + i;
	i = i + 1;
}
```
Loop invariant: $sum = \sum_{j=0}^{j = i-1} j$ 
Post Condition:

**Loop invariants: Program correctness**
Consider the following small program:
```java
// pre : X <= Y 
// post : returns the sum X + (X+1) + ... + Y 
int sumBetween (int X, int Y){
int sum = 0; 
for (int i=X; i!=Y+1; i++) 
	sum += i; 
return sum; 
} 
```

- State the loop invariant. (Hint: Use the example for summing the numbers between O and N discussed in lectures as a starting point.)
$$sum = \sum_{j = X} ^{j = Y+1}j$$


- Show that the loop invariant is established by the initialization. 

- Verify that the loop invariant is preserved by each iteration of the loop. 
- Show that the loop invariant and the termination condition imply the post-condition. 
- What is the complexity in big oh notation of this program?