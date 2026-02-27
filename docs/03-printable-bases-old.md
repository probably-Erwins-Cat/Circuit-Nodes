---
layout: default
title: Printable Bases
---

# Printable Bases

## Overview

The 3D-printed base is the frame that holds your PCB and provides mechanical structure for the Circuit Nodes. This section covers the different base styles available and how to choose which one is right for you.

All bases use the same PCB mounting interface but differ in:
- **Bottom style** (open, magnetic, skeletonized)
- **Screw type** (self-tapping vs. heat insert)
- **Internal height** available for components
- **Material usage** and print time

## Base Style Options

### 1. Open-Bottom Base

**Characteristics:**
- Fully open bottom
- Lowest material usage
- Fastest print time
- Maximum internal height (~19mm for components)
- Allows access to component underside

**Best For:**
- Cost-conscious builds
- Classrooms wanting minimal material
- Repairing components without disassembly
- Maximum PCB visibility from bottom

**Advantages:**
✅ Least material - cheapest per unit
✅ Fastest to print
✅ Can repair solder joints from below
✅ Good visibility of component layout
✅ Easiest to clean/maintain

**Disadvantages:**
❌ Less structural rigidity
❌ Components can be damaged by careless touching
❌ Cannot attach to magnetic surfaces
❌ Less professional appearance

**Print Time:** ~20-30 minutes (depending on layer height)
**Material Used:** ~5-8g

---

### 2. Magnetic-Bottom Base

**Characteristics:**
- Sealed bottom with integrated magnet pocket
- Allows neodymium magnet installation inside base
- Reduced internal height (~16mm for components)
- Can attach to ferromagnetic surfaces
- Professional appearance

**Best For:**
- Classroom demonstrations on magnetic boards
- Blackboard/whiteboard mounting
- Fixed circuit displays
- Professional presentations
- Teacher/presenter use

**Advantages:**
✅ Attaches to magnetic surfaces (whiteboards, steel boards)
✅ Professional appearance
✅ Circuits stay in place during movement
✅ No external magnet hardware needed
✅ Good for fixed installations

**Disadvantages:**
❌ More material (higher cost)
❌ Longer print time
❌ Requires magnet installation
❌ Slightly reduced internal height
❌ Cannot easily repair from below

**Print Time:** ~40-50 minutes
**Material Used:** ~12-15g
**Magnet Type:** Standard neodymium disc magnet (e.g., 20×3mm)

---

### 3. Skeletonized Base

**Characteristics:**
- Interior visible from above through lattice structure
- Prevents inadvertent contact with components
- Medium material usage
- Good visibility while protecting components
- Educational display purpose

**Best For:**
- Educational demonstrations showing component layout
- Protecting components from student hands
- Display purposes
- Circuit labs where visibility is important

**Advantages:**
✅ Protects components from contact
✅ Allows visual inspection of interior
✅ Good educational value (see components working)
✅ Moderate material usage
✅ Unique aesthetic

**Disadvantages:**
❌ Medium material use/cost
❌ Medium print time
❌ Component dust accumulation possible
❌ Cannot attach to magnetic surfaces

**Print Time:** ~35-45 minutes
**Material Used:** ~8-11g

---

## Screw Type Options

### Self-Tapping Screws

**Specifications:**
- Typically M2 or M2.3 countersunk
- Screw directly into plastic base
- No heat inserts required
- Recommended tightness: Finger-tight or slightly snugger

**Advantages:**
✅ No assembly step needed
✅ Faster setup
✅ No heat insert installation required
✅ Cleaner final appearance with countersunk head

**Disadvantages:**
❌ Limited reuse cycles (typically 5-10)
❌ Can strip base material
❌ Not ideal for frequently-disassembled kits

**Recommended Use:** Permanent or semi-permanent installations, student take-home kits

---

### Heat Insert Screws

**Specifications:**
- Typically M2 or M2.5 brass heat inserts
- Traditional machine screws
- More durable threaded connection
- More professional feel

**Installation:**
1. Pre-heat soldering iron to 260°C
2. Press heat insert into position until flush
3. Allow to cool before reassembling
4. Use appropriate sized machine screws

**Advantages:**
✅ Reusable many times (50+ cycles)
✅ More robust connection
✅ Professional appearance
✅ Better for lab settings with frequent changes

**Disadvantages:**
❌ Additional installation step required
❌ Requires heat insert equipment
❌ Higher per-unit cost
❌ More assembly time upfront

**Recommended Use:** Reusable lab kits, shared classroom sets, professional installations

---

## Tolerance Classes

To achieve precise fit between PCB and base, 3D prints are offered with different tolerance classes:

### 0.15mm Tolerance
- **Best Fit**: Most precise alignment
- **Use**: Printers with high accuracy and consistent quality
- **Result**: Tight fit, perfect alignment, minimal wobble
- **Risk**: May be too tight for some printers
- **Recommended**: Once you've proven your printer's capabilities

### 0.20mm Tolerance
- **Good Fit**: Balanced between precision and forgivingness
- **Use**: Most consumer 3D printers
- **Result**: Good alignment, slight wiggle room
- **Risk**: Low - most reliable for varied printer models
- **Recommended**: **START HERE for first prints**

### 0.25mm Tolerance
- **Loose Fit**: Forgiving tolerance, easier assembly
- **Use**: Older or less precise printers
- **Result**: Easy assembly, more wobble possible
- **Risk**: May be too loose for critical applications
- **Recommended**: Troubleshooting print-fit issues

### 0.30mm Tolerance
- **Very Loose Fit**: Maximum forgiveness
- **Use**: Very old or highly variable printers
- **Result**: Always fits, possible stability issues
- **Risk**: Circuits may have unintended flexing
- **Recommended**: Only if all other tolerances fail

**Pro Tip:** Print ONE test part with 0.20mm tolerance first to verify your printer works before mass-printing a kit.

---

## Selection Guide

### For Schools / Educators

**Starter Kit** (best for first-time purchase)
- Open-bottom base
- Self-tapping M2 screws
- 0.20mm tolerance
- Print 1 test piece first

**Classroom Set** (durable, reusable)
- Open-bottom or skeletonized
- Heat insert screws
- 0.15mm tolerance (after confirming printer)
- Print for durability over aesthetics

**Demonstration Set** (for teacher presentations)
- Magnetic-bottom base
- Self-tapping screws
- 0.20mm tolerance

### For Students / Makers

**Personal Kit** (budget-conscious)
- Open-bottom base
- Self-tapping screws
- 0.20mm tolerance

**Premium Kit** (frequent use, reusability)
- Magnetic-bottom or skeletonized
- Heat insert screws
- 0.15mm tolerance

**Display Kit** (showcase circuits)
- Skeletonized or magnetic-bottom
- Self-tapping screws
- 0.15mm tolerance (best appearance)

---

## Installation Instructions

See [Assembly Instructions](03-assembly-instructions) for detailed step-by-step base assembly.

## 3D Printing Parameters

For best results, use these parameters when printing bases:

**Recommended Settings**
- **Layer Height**: 0.15-0.2mm (finer = better quality)
- **Infill**: 15-20% (structural ribs are sufficient)
- **Support**: Yes (for magnetic-bottom and skeletonized)
- **Nozzle Temp**: 210-220°C (PLA) or 230-250°C (PETG)
- **Bed Temp**: 60°C (PLA) or 80-90°C (PETG)
- **Print Speed**: 40-60mm/s (slower = more accurate)

**Recommended Materials**
- PLA: Easiest, good for most applications
- PETG: More durable, better for lab settings
- ABS: Professional look, challenging to print
- High-temp PLA: Best dimensional stability

---

## Downloading Base Files

Base files are available as:
- **3D Models**: FreeCAD files (.FCStd) for editing
- **STL Files**: Ready-to-print 3D models
- **STEP Files**: CAD exchange format

Visit the [printable-bases](../printable-bases/) folder in the repository.

---

**Ready to print?** → [Assembly Instructions](03-assembly-instructions)

**Want to design custom bases?** → [Design & Manufacturing](06-design-manufacturing)

