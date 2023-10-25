#ELEC/2040 #Circuits #Communication #UniNotes

**Slides/Audio**
[[Attachments/Audio Book Week 3.pdf]]

**Relevant Videos:**
- Delta Function
- How to Understand the Delta Impulse Function
- Sum of Delta Functions
- What is a linear time-invariant system?
- Impulse Response

**Practical**
[[Attachments/PracticalWeek3.pdf]]

# Linear Time-Invariant Systems and Impulses - Intro to convolution
Systems are essentially anything that takes an input signal, performs some action, and then gives an output signal.
![[Attachments/Pasted image 20230306152013.png|400]]

## Gain
Gain circuits will multiply some signal by another value. In both examples the signal is multiplied by two, with the constant 3V signal becoming a constant 6V signal. The second example alters the slope of the signal to be 3 as opposed to the previous gradient of 1.5.
The gain can also be a number 0 < h < 1, this is often referred to as attenuation.

![[Attachments/Pasted image 20230306152051.png|400]]

## Square Law Device
The Square Law Device simply raises the input signal to the power of 2.
$x(t)$ -> Square Law Device -> $y(t)=(x(t))^2$
![[Attachments/Pasted image 20230306153744.png]]
If the signal has a slope, the Square Law Device will transform it into a curve. It raises the degree of whichever signal enters it.

## Delay
Delaying a signal is as easy as it sounds. Delay the signal by T seconds.
$x(t)$ -> Delay of T Seconds -> $y(t) = x(t-T)$
![[Attachments/Pasted image 20230306154155.png]]

# Two Path Radio Channel
![[Attachments/Pasted image 20230306154238.png|400]]
A two path radio channel sends out two signals that follow a different path. Each signal has its own delay and gain values. Two Path signals follow the form:
$$y(t) = h_{1}x(t-T_{1})+h_{2}x(t-T_2)$$

Where:
$h_{1}$ = Gain of Path 1
$h_2$ = Gain of Path 2
$T_1$ = Delay of Path 1 (sec)
$T_2$ = Delay of Path 2 (sec)

## N-Path Radio Channel
For signals that go through more than two channels, the equation is as follows.
$$y(t) = \sum_{i=1}^{n} h(T)x(t-T)\space \Delta T$$

## Continuum of Paths
For a continuum of paths, the sum of paths and the output signal is as follows

$$y(t) = \int h(T)x(t-T)\Delta T$$
between infinity and negative infinity

# Electrical Circuit
![[Attachments/Pasted image 20230313131734.png]]

$$i(t) = \frac{v_{s}(t) - v_{c}(t)}{R}$$
$$i(t) = C \frac{\Delta v_{c}}{\Delta t}$$
$$RC = 1/2$$
$$\frac{\Delta v_{c}}{\Delta t} + 2v_{c}(t) = 2v_{s}(t)$$


> All above systems (except Square Law Device) are linear, time invariant systems

# Linear Systems
If a system is linear:

$$ x(t) \rightarrow System \rightarrow y(t)$$
$$\alpha x(t) \rightarrow System \rightarrow \alpha y(t)$$
For any constant $\alpha$.

A more formal definition

$$x(t) = \alpha_{1}x_{1}(t)+\alpha_{2}x_{2}(t) \rightarrow System \rightarrow y(t) = \alpha_{1}y_{1}(t) + \alpha_{2}y_{2}(t)$$

For any input signals $x(t)$ & $y(t)$ and constants $\alpha_1$ & $\alpha_2$
**Then system is linear**

# Unit Impulse Signal
![[Attachments/Pasted image 20230313133107.png]]

$\delta^{\epsilon}(t)$ Is a short pulse of duration $\epsilon$

![[Attachments/Pasted image 20230313133312.png]]

$$\int_{-\infty}^{\infty} \delta^{\epsilon}(t)\Delta t = 1$$

![[Attachments/Pasted image 20230313133803.png]]
$$
 \delta(t) = \begin{cases} 
      \infty & \textrm{ if $t=0$} \\
      0 & \textrm{Everywhere Else} \\
   \end{cases} 
$$

$$\int_{-\infty}^{\infty} \delta (t)\Delta t = 1$$
## Magnitude of Impulse and Integration
![[Attachments/Pasted image 20230313134608.png]]

$$x(t) = 3 * \delta (t)$$



$$\int_{-\infty}^{\infty} x (t)\Delta t = 3$$
$$y(t) = 48(t-2)$$
Integral between 3 & 1 of y(t) = 4

## Integration Properties of Signals made up of Impulses

Recall some integrations properties of the $\delta$ function.
![[Attachments/Pasted image 20230313141758.png]]

Here is a signal with two delta functions:
$$x(t) = 2*\delta*(t+3) + 0.5*\delta*(t-2)$$
We can also integrate this signal, x(t), over different intervals
The rule is to add up the magnitudes of the impulses that lie in the range of integration.
![[Attachments/Pasted image 20230313142200.png]]

Since we are looking at integrating the unit impulse signal, there is a simple connection between the unit impulse signal and the unit step function, which is obtained by integration"
![[Attachments/Pasted image 20230313142529.png]]
![[Attachments/Pasted image 20230313142541.png]]

## Some other Properties of Unit Impulses
What happens if we multiply a signal by $\delta (t)$?
![[Attachments/Pasted image 20230313142642.png]]

What does $\delta (-t)$ look like?
![[Attachments/Pasted image 20230313142944.png]]

What happens if we multiply a signal by $\delta (t-t_{0})$?
![[Attachments/Pasted image 20230313143020.png]]\

## Impulse Response Of a System
![[Attachments/Pasted image 20230313143054.png]]

# Time Invariant System

A system is time invariant if the system impulse response is the same, no matter what time we send the impulse.
![[Attachments/Pasted image 20230313143157.png]]
If system is time-invariant output will be $h(t-\tau)$

A Linear Time-Invariant system (LTI System) Is one that is Linear and Time-Invariant.


# The Sifting Property of the $\delta$ Function

$$\int_{-\infty}^{\infty} f(t) \delta(t) \Delta t = \int_{-\infty}^{\infty} f(0) \delta(t) \Delta t = f(0)$$

This first equation says we can use the unit $\delta$ function to **sift** out the value of the signal $f(t)$ at $t=0$

A more general version of the sifting property of a $\delta$ function is the following"
$$\int_{-\infty}^{\infty} f(t) \delta(t-\tau_{1)} \Delta t=\int_{-\infty}^{\infty} f(\tau_1) \delta(t-\tau_{1)} \Delta t = f(\tau_1)$$

This second equation says that if we multiply signal $f(t)$ by a unit impulse, with the impulse located at a particular time, say $t=\tau_1$, and we integrate the whole thing, we sift out the value of the signal $f(t)$ at that particular time (i.e. $f(\tau_1)$)

We can use the unit $\delta$ function to sift out the value of the signal at $f(t)$ at any arbitrary time $t=\tau_1$

# Convolution

$$y(t) = \int_{-\infty}^{\infty} h(\tau)x(t-\tau)\Delta \tau$$
Think of $t$ as a fixed constant. What then is $x(t-\tau)$?

Think of $\tau$ as the input variable.
For the signal: $Z(\tau)=x(t-\tau)$
$\tau$ Is the time Variable of $Z(\tau)$

The integral above is then:
$$y(t) = \int_{-\infty}^{\infty} h(\tau)Z(\tau)\Delta \tau$$
![[Attachments/Pasted image 20230313145815.png]]

## What does $Z(\tau)$ look like?
![[Attachments/Pasted image 20230313145935.png]]

Convolution commutes; in other words, $$h(t)*x(t) = x(t)*h(t)$$which can be verified by showing:
![[Attachments/Pasted image 20230313150020.png]]

## Convolution with a $\delta$ function
![[Attachments/Pasted image 20230313150100.png]]
This shows that convolving a signal with the unit impulse doesn’t do anything to the signal. Its like multiplying a number by 1: no change to the number. Here, there is no change to the signal x(t).

![[Attachments/Pasted image 20230313150143.png]]
Here, we are looking at a shifted delta function, or, in other words, a delayed unit impulse (well, delayed if t0 > 0). 

The mathematics here shows that convolving a signal with an impulse located at a particular time, delays the signal by that amount of time, and that is all that it does. 

This results includes the earlier result, which was the special case when the impulse happens at time t=0. Delaying a signal by 0 seconds doesn’t do anything to a signal. 

The result on this page is more general, allowing the impulse to occur at an arbitrary time $t_0$ .