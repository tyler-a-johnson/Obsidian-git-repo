#Communication  #ELEC/2040 #Communication/SignalProcessing #UniNotes

**Slides/Audio**
[WorldOfSignals](Attachments/WorldOfSignals.pptx)
[1 Review Complex Numbers](Attachments/1%20Review%20Complex%20Numbers.pdf)

**Relevant Videos:**
- Visualising Complex Numbers with an Example
- How do Complex Numbers Relate to Real Signals?
- Why are Complex Numbers written with Exponentials?

**Practical**
[Practical Week 1](Attachments/Practical%20Week%201.pdf)

**Practice Quiz**
[Practice Quiz](Attachments/Practice%20Quiz.docx)

**Weekly Project**

# Complex Numbers
A complex number has two components: a real component, and an “imaginary” component that is indicated by being multiplied by the complex variable “i” (or “j”). For example.

$$ z1 = 3 + 5i$$
$$z2 = 5 + 0.5j$$
> Note - Imaginary numbers are such that  $i^{2}= -1$

Complex numbers are often plotted on the "Complex plane", where the X axis represents the real component and the Y axis represents the imaginary component

The following MATLAB code will plot two complex numbers as shown.
```
z0 = 0+0j;   % Origin
z1 = 3+5i;
z2 = -0.5+1.5j;
figure(1) hold off plot(z1,'*');
hold on plot(z2,'+');
plot(complex(z0),'gO');
axis([-10 10 -10 10]) 
axis('square') 
grid
```

![Pasted image 20230227135954](Attachments/Pasted%20image%2020230227135954.png)

## Why though?
Complex numbers are a succinct and easy way to manipulate and describe both phase and magnitude. Useful especially in electronics(j), physics(i), and engineering(j). Essentially, the name "Imaginary" is a bit of a misnomer.

# Operations on Complex Numbers
## Conjugate

The “complex conjugate” of a complex number is a number with the same “real” part, and the negative “imaginary” part. Conjugates are often denoted with an asterisk. Below is an example.
$$z = x + jy$$
$$z* = x-jy$$
In MATLAB, you can obtain a conjugate using the conj() command.

```
z1 = 5 + 4j;
conj(z1) = 5 - 4j;
```

## Complex Number Operations
![Pasted image 20230227144146](Attachments/Pasted%20image%2020230227144146.png)
![Pasted image 20230227144204](Attachments/Pasted%20image%2020230227144204.png)
![Pasted image 20230227144223](Attachments/Pasted%20image%2020230227144223.png)
![Pasted image 20230227144238](Attachments/Pasted%20image%2020230227144238.png)

# Formats
## Rectangular/Cartesian
This is the one most would be familiar with. Complex numbers in Rectangular format follow the form:
$$ z = a + ib$$
Where *a* and *b* are both real numbers and *i* is the imaginary number (root -1)
![Pasted image 20230227141446](Attachments/Pasted%20image%2020230227141446.png)

The Cartesian form can be plotted as such:
![Pasted image 20230227141558](Attachments/Pasted%20image%2020230227141558.png)
Both the real part and the imaginary part can be isolated in MATLAB (and obviously in regular handwritten maths). The notation for which is as such:

Let $z = a + ib$

Maths:
$a = Re(z)$
$b = Im(z)$

MATLAB:
$a = real(z)$
$b = imag(z)$

## Polar
Polar format is represented as such:
![Pasted image 20230227142246](Attachments/Pasted%20image%2020230227142246.png)
![Pasted image 20230227142317](Attachments/Pasted%20image%2020230227142317.png)

Magnitude can also be called:
- Modulus
- Absolute Value
- Gain
- Amplitude
Phase can also be called:
- Angle
- **Argument**

MATLAB uses radians in its polar form (i.e. the full circle is 2pi radians round)

The following equations can be used to convert from **Cartesian to Polar**:

$| z | = \sqrt(x^{2}+y^{2}) = r$

$arg(z) = \theta = tan^{-1}(y/x)$

The following equations can be used to convert from **Polar to Cartesian**:

$z = r*cos(\theta) + j*r*sin(\theta)$

$x = r*cos(\theta)$
$y = r*sin(\theta)$

The Polar form is particularly useful as it is much easier to 'rotate' by simply changing the phase while keeping the amplitude constant. This essentially rotates the Complex Polar around the origin. ($\theta$ is measured from the positive x-axis as per convention)



## Exponential
![Pasted image 20230227143535](Attachments/Pasted%20image%2020230227143535.png)
![Pasted image 20230227143649](Attachments/Pasted%20image%2020230227143649.png)
![Pasted image 20230227143721](Attachments/Pasted%20image%2020230227143721.png)

# Format Conversions
![Pasted image 20230227143750](Attachments/Pasted%20image%2020230227143750.png)
![Pasted image 20230227143805](Attachments/Pasted%20image%2020230227143805.png)
![Pasted image 20230227143852](Attachments/Pasted%20image%2020230227143852.png)
![Pasted image 20230227143909](Attachments/Pasted%20image%2020230227143909.png)
![Pasted image 20230227143935](Attachments/Pasted%20image%2020230227143935.png)
![Pasted image 20230227143951](Attachments/Pasted%20image%2020230227143951.png)

# Properties
![Pasted image 20230227144312](Attachments/Pasted%20image%2020230227144312.png)

# Notes and Examples
#Examples 
![Practice Quiz](Attachments/Practice%20Quiz.pdf)