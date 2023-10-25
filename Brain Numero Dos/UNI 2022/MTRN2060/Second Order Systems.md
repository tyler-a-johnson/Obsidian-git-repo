#MTRN/2060  #Circuits 
[[UNI 2022/MTRN2060/Attachments/MTRN2060 Second Order Systems.pptx]]

# What is a System Response?:
A typical simple system has one input and one output.

Examples (input: output)
	•Amplifiers from last week (input Voltage: output Voltage)
	•A to D converter (input voltage: 10 bit digital level)
	•DC motor (input Voltage: motor speed, or motor position)
	•DC motor (load torque: motor speed)
	•Vehicle suspension (road surface: vehicle height)
	•Electric guitar pickup (string vibration: electrical signal)
	•Vehicle steering (steering wheel angle: tire angle, direction of vehicle travel)
	•Vehicle throttle (gas pedal position: air valve position, motor torque, speed, power)

In nearly all cases we can describe the system response by asking two questions:
	•How does it respond to a step change in input?
	•How does it respond to an oscillating input of different frequencies?

# System Analysis and Modelling:
Many mechatronic systems can be modelled as linear ordinary differential equations
Many are generally non-linear, but linear over a limited range.
Consider the order of a system

•A zero order system has gain or sensitivity. No time delay or distortion Out = Gain x In
	•The voltage at some point in a circuit containing DC sources and resistors can be written as an equation with no time dependence.
•Can you describe a zero-order mechanical system?


•A first order system has time delay, typically described by a single exponential.
•A second order system has time delay, and is capable of oscillation in response to a non-oscillating input. It has a restoring force and a damping force.

# First Order System:
![[UNI 2022/MTRN2060/Attachments/FirstOrderSystem.png]]

Consider an RC circuit:
$$Vc=Vout$$
$$i_c=C(dV_{out})/dt$$
$$KVL: V_in=iR+V_out$$
$$V_out=V_in-RC (dV_out)/dt$$$$(dV_out)/dt=V_in/RC-1/RC V_out$$

This is a first order differential equation of the form:
$y^′ (t)=a-by(t)$

In words: the derivative of the function is the function (with some constants)

One way to solve this type of problem is to guess a solution and see if you can make it work.

A function that has this key property (derivative of the function is the function) is an exponential:
$y(t)=A+Be^(-t∕τ)$

For our purpose:   $V_{out}(t)=A+Be^(-t∕τ)$
We can derive:   $V_{out}^′=-B/τ e^(-t∕τ)$

Combine these two to eliminate the exponential:
$V_{out} (t)=A-τV_{out}^′$

Compare this to our original equation from KVL:
$V_{out}=V_{in}-RC (dV_{out})/dt$

We can see that $A = V_{in}$ and $τ = RC$

To find B we need to use the state of the circuit at t=0. Lets assume that the capacitor was discharged at t=0. The only way to get $V_{out}=0$ at t=0 is for B = -A and

$V_{out} (t)=V_{in} (1-e^(-t∕RC) )$

![[UNI 2022/MTRN2060/Attachments/UnitStepInputFirstOrder.png]]

•All first order systems have a time constant (t) and respond to a step function with a single exponential decay or rise.

•Time constants describe the characteristic speed of a response. 63% of steady state after 1t. 98% of steady state after 4t

•Observing the step response of a system is usually much easier than modelling the system and solving equations, but can give similar information.

**Second Order Systems:**
•Second order systems are ubiquitous and all engineers must understand the basics. They are called 2nd order because they contain a second derivative

•Many systems can be simplified to an ordinary linear 2nd order differential equation such as the spring-mass-damper.

•Which is characterized by damping ratio z and resonant or natural frequency WN.

•Gravity, mass and friction are all that is required.

•Consequences of not grasping these ideas: [Tacoma Narrows bridge resonaces driven by wind](https://www.youtube.com/watch?v=lXyG68_caV4)
#Video 

# Natural Frequency
$$W_o = √(k/m)$$

$W_o$ = Natural Vibration Frequency
k = Restoring Force
m = Mass

# Damping Ratio
$$z =B/(2√km)=B/B_c$$
When $z$ = 1, the system is critically damped. The fastest possible settling without overshooting.

# Damped Frequency
$$w_d =ω_n √(1-z ^2 )$$
# Frequency Response of a System
•To determine the frequency response of a linear system, we apply sinusoidal inputs and measure the output amplitude.

•After a short period a transience, a constant sinusoidal output will result. The output will have a different phase and amplitude from the input, but the same frequency.

•Plotting this resulting amplitude and phase versus frequency gives Bode Plots. These Bode Plots (log/log) for amplitude give important information.

•They can be mathematically determined from the differential equations using Laplace transforms.

•This gives the “Transfer Function” which gives the output amplitude versus frequency

•Combining this with our understand of Fourier series allows us to see how any time varying signal will be measured, affected, or amplified by a system.

•We will not solve these problems here, but you must know the characteristics of a first and second order system

## Frequency Response of 2nd Order System

Amplitude:
![[UNI 2022/MTRN2060/Attachments/SecondOrderSystemAmplitudeResponse.png]]
Underdamped systems (z <<1) can destructively resonate around their natural frequencies. Identifying and eliminating resonances in machines such as helicopters and cars is very important.


Phase:
![[UNI 2022/MTRN2060/Attachments/SecondOrderSystemPhaseResponse.png]]Note z = 0.707 gives best approximation of phase linearity and the best amplitude linearity over the largest bandwidth. Amplitude linearity is important for passing information (signals)


# Example Questions:
![[UNI 2022/MTRN2060/Attachments/ExampleInstrument.png]]
1. A scientific instrument needs to be isolated from external vibrations. The scientists have located the instrument in the basement of the building and have suspended the small measurement unit on a 500 g block of copper from three vertical springs. Each spring has a constant of 1 N/cm and is 20 cm long when hung.

  a) Identify two resonant modes and give their frequencies. A third exists, but the resonant frequency is harder to calculate

  b) For improved vibration isolation would you increase or decrease the resonant frequencies. 

  c) I helped build a scanning tunnelling microscope like this at the University of Alberta. Directly underneath the copper block we had an array of strong magnets.  Why would we have done that?

Answers

a)  If all three springs extend at the same time, then the block will vibrate up and down at a resonant frequency given by sqrt(k/m). k= 3 N/cm or 300 N/m. m=0.5 kg. w=sqrt(300/0.5) = 24.5 rad/s = 3.9 Hz

    If the block swings like a pendulum without the springs changing in length, it will swing with an angular frequency  of sqrt (g/L) = sqrt(9.8/0.2)=7 rad/s = 1.1 Hz.

   Another mode of vibration is twisting, where the block spins about a vertical axis.

b) Everything vibrates. Every passing car, and person sends vibrations through buildings. We don’t want these to couple into the measurement device. Second order systems have a low amplitude response to frequencies above their natural frequencies (see previous slide). By lowering the natural frequencies you can block vibration across a larger range.

c) The magnets provide eddy current damping to the nearby copper block. This effect converts mechanical movement into heat and works well for good electrical conductors like copper.

# Knowledge from practice quiz

*Many automotive suspensions use a vertically mounted spring and damper like that shown below. Here the total vehicle weight is 900 kg (equally distributed among the 4 wheels), and each spring has a coefficient of 20000 N/m. 

What is the natural or resonant frequency of the vehicle?

![[UNI 2022/MTRN2060/Attachments/Pasted image 20221103171813.png]]
Select one:

a. 9.5 rad/s

**b. 9.4 rad/s**

c. 4.8 rad/s

d. 4.7 rad/s


*Many automotive suspensions use a vertically mounted spring and damper like that shown below. Here the total vehicle weight is 1100 kg (equally distributed among the 4 wheels), and each spring has a coefficient of 25000 N/m. 

What is the natural frequency of each suspension system? 

![](https://ilearn.mq.edu.au/pluginfile.php/8003101/question/questiontext/11758430/3/36082733/Untitled.png)
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221103171915.png]]

Select one:

a.4.8 rad/s

b.9.4 rad/s

c.4.7 rad/s

**d.9.5 rad/s**


*When analyzing a second order system we may wish to determine the step response and/or the frequency response. Match the measured parameter to the appropriate response.

Amplitude Ratio or Gain - Frequency Response

Settling time - Step Response

Phase angle - Frequency Response 

Resonance point - Frequency Response

Steady State Value  - Step Response

Overshoot - Step Response



*What are the characteristics of a critically damped 2nd order system

Select one:

a. damped natural frequency that is greater than the resonant frequency

b. fastest possible settling with overshoot

**c. fastest possible settling with no overshoot**

d. damping constant equal to resonant frequency



*A mechanical system is found to resonate at 350 Hz for long durations after a step response input. Some damping is added to reduce the amplitude of the oscillations, and now the system is found to oscillate at 180 Hz for much less time. What is the damping ratio ζ?

Select one:

**a. 0.86

b. 0.51

c. 0.73

d. 0.71


*Many automotive suspensions use a vertically mounted spring and damper like that shown below. Here the total vehicle weight is 900 kg (equally distributed among the 4 wheels), and each spring has a coefficient of 20000 N/m. 

What damping constant is required for critical damping? 

![](https://ilearn.mq.edu.au/pluginfile.php/8003101/question/questiontext/11739701/3/36082734/Untitled.png)

Select one:

a. 10.5 kNs/m

b. 5.2 kNs/m

c. 8.5 kNs/m

**d. 4.2 kNs/m


*A second order system is observed to oscillate briefly after a step input. The oscillation occurs at a rate of 1.9 Hz. The mass of the system is 1 kg and the spring constant is 256 N/m. What is the damping ratio?

Enter answer to 2 decimal places.

Answer: 0.67