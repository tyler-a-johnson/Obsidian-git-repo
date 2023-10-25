Start
```
; Ender 3 Custom Start G-code

M190 S60 ; preheat bed for abl
G28 ; home
G29 ; abl
;*** Start Preheating ***
M190 S{first_layer_bed_temperature[0]} ; heat to setting 
M109 S{first_layer_temperature[0]} ﻿T0 ; heat to setting
;*** End Preheating ***
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
M300 P250 ; play chime to indicate print starting
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
```

End
```
; Ender 3 Custom End G-code
M400 ; Wait for current moves to finish
M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)
G91 ; Set coordinates to relative
G1 F2400 E-3 ; Retract filament 3mm at 40mm/s to prevent stringing
G0 F5000 Z20 ; Move Z Axis up 20mm to allow filament ooze freely
G90 ; Set coordinates to absolute
G0 X0 Y235 F5000 ; Move Heat Bed to the front for easy print removal
M84 ; Disable stepper motors
; End of custom end GCode
```
