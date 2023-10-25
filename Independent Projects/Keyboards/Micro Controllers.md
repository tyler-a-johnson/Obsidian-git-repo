# UF2 Bootloader
UF2 bootloader microcontrollers don't need firmware flashed using QMK or another toolbox, but instead uses .uf2 files. The controller presents itself as a mass storage device which you can then drag and drop the files into.

.hex and other binary files are incompatible

## Splinky RP2040

The Splinky RP2040 is an ATMEGA32u4 Rasberry Pi based micro controller which uses a UF2 bootloader. More can be found about the Splinky here:
https://github.com/plut0nium/0xB2#programming

# Soldering
Be extra careful soldering microcontrollers, excess heat can de-solder or fry some microcontrollers. Best to solder at around 250 to avoid damage. Use a fine solder tip and ceramic tip tweezers (or at least ESD safe). Do not use a heat-gun, avoid flux but use it if solder is being stubborn. Make sure the tip is properly tinned.