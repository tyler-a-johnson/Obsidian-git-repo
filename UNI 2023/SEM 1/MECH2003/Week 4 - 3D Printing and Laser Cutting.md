#CAD  #MECH/2003 #UniNotes

**Slides:**
[../../../Attachments/Week 04 MECH203 Lecture Slides V23-0.pdf](../../../Attachments/Week%2004%20MECH203%20Lecture%20Slides%20V23-0.pdf)

```ad-faq
title: Material Removal VS Material Addition
**Material removal manufacturing techniques** - Any process where material is removed to create a component. (CNC, Lathe, Cutting, Sawing, Drilling etc)

**Material additive manufacturing techniques** - Any process where material is added to create a component. (3D Printing, Casting)

```

# Rapid Prototyping
Rapid prototyping is typically done using additive manufacturing methods, these have multiple advantages:

- Manufacturing Time
	Machining components will generally take longer.

- Material Used
	Using removal manufacturing techniques wastes a lot of material (off cuts, chips, sawdust). Additive manufacturing techniques use a volume of material similar to the volume of the desired object. With tech like 3D printing, you can control exactly how much filament is used to create the part (Assuming supports are negligible)

- Complexity Possible
	Additive manufacturing processes are capable of much more complex geometries (Print in place, vase mode, etc)

Additive rapid prototype machines all manufacture components by adding material in layers (for now). The way that this is achieved is dependent on which form the materials being used are in. 

- Liquid
	Liquid monomer or polymer is cured layer by layer (resin printer - cured via UV exposure - Stereo lithography (STL) (File type was named after that))

- Powder
	Aggregated and bonded layer by layer (laser sintering and powdered metal printers (Powder cast?))

- Solids
	Laminated layer by layer (FDM printers)

## Fundamentals of Rapid Prototyping

1. Geometric Modelling - Make your model
![Pasted image 20230327152845](Attachments/Pasted%20image%2020230327152845.png)

2. Tessellation of geometric model - Convert to STL (series of points, triangles, and quadrilaterals)
![Pasted image 20230327152938](Attachments/Pasted%20image%2020230327152938.png)

3. Slicing the model into layers - Cross-sections of the model taken at intervals equal to the layer thickness you're using
![Pasted image 20230327153052](Attachments/Pasted%20image%2020230327153052.png)

### Alternate Names
- Layer manufacturing
- Direct CAD manufacturing
- Solid free form fabrication
- Rapid prototyping manufacturing
- 3D Printers

# Stereolithography

![Pasted image 20230327153429](Attachments/Pasted%20image%2020230327153429.png)

The laser used is typically helium-cadmium or argon ion lasers. Which can solidify monomer at a rate of 500 mm/s to 
2500 mm/s.

Once complete, the part is roughly 95% cured and needs extra UV radiation (UV box) to fully cure.

# Solid Ground Curing
Similar to stereolithography only instead of a laser directing light. A mask is used to restrict light from curing monomer other than the monomer that needs curing.
![Pasted image 20230327153921](Attachments/Pasted%20image%2020230327153921.png)
Only a thin layer of resin is used

The light turns on for around 2 seconds, before the light turns off, and the mask is changed to the mask for the next layer. (Electrostatic glass, similar to a photocopier)

The vacant volume surrounding the component is then filled by pouring a liquid wax into this cavity, By doing this, it is not required to create supports.

The top of the wax is machined flat to ensure the subsequent layer flat and level.
![Pasted image 20230327154310](Attachments/Pasted%20image%2020230327154310.png)

Each later can be created every 90s, which can be up to 8 times faster than other methods (depending on cross-section and complexity). No support structure is needed due to the wax, and no additional curing is needed

# Droplet Deposition Manufacturing
Operates by melting the starting layer. As the droplets cool, they weld with the existing layer to create the new layer.

The location of where each droplet is positioned is controlled by a moving print nozzle. Once the layer is complete, the platform is lowered and the process repeats.

Materials compatible with this method include wax, thermoplastics, and some low melting point metals (tin, zinc, lead, aluminium, probably pewter that useless fucking lead wannabe)

The surface created is unlikely to be smooth, therefore a machining operation may be required for each layer to ensure that it remains flat. This method can generate layer thicknesses of 0.1 mm and can apply between 10,000 and 15,000 droplets per second.
![Pasted image 20230327154912](Attachments/Pasted%20image%2020230327154912.png)

