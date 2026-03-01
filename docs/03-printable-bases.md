---
layout: default
title: Printable Bases
---

# Printable Bases

The printable base provides mounting for all parts and helps aligning the puzzle pieces. 

![Printable base preview]({{ site.baseurl }}/images/printable-base.png){: width="800" }

## Files & Tools

- All base models are in **FreeCAD** format (`.FCStd`) in the
  `printable-bases` folder of the repository.
- All common parts already exported as STL and STEP for immediate printing
- The *Open* design is for easier repairability without disassembly and better stackability
- The *Magnetic* variant is for enclosing sensitive components in the inside of the part and for optional magnet holder (black board use)

## Print Parameters

The printable base is highly optimized for perimeter printing, i.e. the slicer will print 90% of the time perimeters, thus, many settings are unimportant. Use these general settings for PLA or PETG:

Layer height:   0.20 mm
Wall (perimeter): 2 shells
Infill:         100 % (for filling the few small non-perimeter-wall sections)
Suppor:         not required, only short bridging section 

## Preparation before Batch Printing: Tolerances & Test Print

**FIRST PRINT** a tolerance tester piece (folder [`tolerance-tester/`](https://github.com/probably-erwins-cat/Circuit-Nodes/tree/main/tolerance-tester))
containing one screw hole and one magnet connector tester. These parts summarize all tolerance/clearance classes so you can verify your printer capabilities. *There is nothing worse, than batch printing bases and figuring out they do not met the criterion for good assembly and alignment.*

### Screw Hole Tolerance

![Screw tolerance tester]({{ site.baseurl }}/images/tolerance-tester-screw.png){: width="800" }

The screw hole tester is an oriented part that habors ten holes with increasing diameter in 0.05mm increments. A side hole marks the imperically found best hole size for the average printer and the typical size of self-tapping M2 screws, 1.95mm. 

Screw in M2 screws in every hole and determine which screw size feels best. *When to tight*, the screw strips or the screwdriver cams out and rounds the screw head. *When too loose*, the screw  strips the plastic when over tightening the PCB down to the printable base.

### Connector Pocket Tolerance

![Connector tolerance tester]({{ site.baseurl }}/images/tolerance-tester-connector.png){: width="800" }

Four tolerance classes are provided per default for the PCB cavity and magnet holes:

| Dimension | Clearance | 
|-------|-----------|
| 0.10 mm | tight fit, for very precise printers or when underextruding happens |
| 0.15 mm | normal, **start here** |
| 0.20 mm | looser fit, easier insertion |
| 0.25 mm | loose fit, when printer overextrudes when printhead is cornering |

If none of those clearances work for you, you should first look into calibrating your printer.

### Base Alignment Nose Tolerance

The hexagonal protrusion and indentation helps aligning the bases, so the magnetic connectors connect flush. Therefore, the tolerance should be chosen small enough for excellent alignment and wide enough so the parts can slide virtually frictionless. A tolerance of 0.2mm is is typically sufficient (making it slightly less than 0.4mm clearance in total) and is in reach of all recent printers. 

## Batch printing

A standard size printer can carry 20 bases on one print plate. One base is printed in less than an hour, thus, one print plate is printed in less than a day.

You can either batch print the bases in an over-night print job or head over to [Sourcing & Manufacturing](06-sourcing-manufacturing), where you can find hubs that help you sourcing printable bases.


---

That's all you need for the “printable bases” step.  Next, move on to
[Assembly Instructions](04-assembly-instructions) where the PCBs, magnets and
screws are brought together.

