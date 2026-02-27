---
layout: default
title: Printable Bases
---

# Printable Bases

Circuit Nodes bases are the first parts you produce: the PCBs sit in them and
electric/magnetic connectors live in their pockets.  This chapter gives the
printing information you need; assembly details are covered later.

## Files & Tools

- All base models are in **FreeCAD 0.21** format (`.FCStd`) in the
  `printable-bases` folder of the repository.
- Export an STL with the default mesh tolerance (0.1 mm) before slicing.
- You only need the *Open*, *Magnetic*, or *Skeletonized* variant – the
differences are cosmetic.

## Tolerances & Test Print

Three tolerance classes are provided for the PCB cavity and magnet holes:

| Label | Clearance | When to use |
|-------|-----------|-------------|
| 0.15 mm | tight fit | high‑precision printers, final build |
| 0.20 mm | normal | most consumer FDM machines (start here) |
| 0.25 mm | loose | older / variable printers, troubleshooting |

**FIRST PRINT** a single tolerance‑test piece (folder `tolerance-test/`)
containing one screw hole and one magnet pocket.  Fit it to a real PCB and a
magnet; adjust slicer scaling or choose a different class before running a full
batch.  This step avoids mis‑sized screw holes and loose/pressed‑out magnets.

## Print Parameters

Use these general settings for PLA or PETG:

```
Layer height:   0.15–0.20 mm
Wall (perimeter): 2–3 shells
Infill:         15–20 %
Speed:          40–60 mm/s
Nozzle temp:    210–230 °C (PLA), 230–250 °C (PETG)
Bed temp:       60 °C (PLA), 80 °C (PETG)
Supports:       yes (for magnetic/skeletonized)
```

Orient the base **face up** so magnets and screw posts print cleanly.  Brims or
a thin skirt help with bed adhesion.

## First Print Checklist

1. Load the tolerance test STL and print it.
2. Check that an M2 screw passes through the hole with finger‑tight fit.
3. Verify a 2 mm magnet sits flush in its pocket without wiggle.
4. If either check fails, try the next tolerance class or adjust slicer XY
   scaling by ±1 %.
5. Once satisfied, slice the full batch and print the remaining bases.

---

That's all you need for the “printable bases” step.  Next, move on to
[Assembly Instructions](04-assembly-instructions) where the PCBs, magnets and
screws are brought together.

