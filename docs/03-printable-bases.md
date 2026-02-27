---
layout: default
title: Printable Bases
---

# Printable Bases

Circuit Nodes bases are the first parts you produce: the PCBs sit in them and
electric/magnetic connectors live in their pockets.  This chapter gives the
printing information you need; assembly details are covered later.

## Files & Tools

- All base models are in **FreeCAD** format (`.FCStd`) in the
  `printable-bases` folder of the repository.
- Export an STL with the default mesh tolerance (0.1 mm) before slicing.
- The *Open* design is for easier repairability without disassembly and better stackability
- The *Magnetic* variant is for enclosing sensitive components in the inside of the part and for optional magnet holder (black board use)

## Tolerances & Test Print

Three tolerance classes are provided per dafault for the PCB cavity and magnet holes:

| Label | Clearance | 
|-------|-----------|
| 0.15 mm | tight fit |
| 0.20 mm | normal, start here |
| 0.25 mm | loose |

**FIRST PRINT** a tolerance‑test piece (folder `tolerance-test/`)
containing one screw hole and one magnet connector tester. These parts summarize all tolerance/clearance classes so you can verify your printer capabilities.

## Print Parameters

The printable base is highly optimized for perimeter printing, i.e. the slicer will print 90% of the time perimeters, thus, many settings are unimportant. Use these general settings for PLA or PETG:

Layer height:   0.20 mm
Wall (perimeter): 2 shells
Infill:         80-100 % (for filling the few small non-perimeter-wall sections)



---

That's all you need for the “printable bases” step.  Next, move on to
[Assembly Instructions](04-assembly-instructions) where the PCBs, magnets and
screws are brought together.

