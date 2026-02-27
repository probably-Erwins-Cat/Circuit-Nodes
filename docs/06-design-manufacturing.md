---
layout: default
title: Design & Manufacturing
---

# Design & Manufacturing

## Overview

This section covers the technical aspects of Circuit Nodes design and manufacturing, including:
- PCB design specifications and tools
- Manufacturing processes
- Gerber file generation and ordering
- 3D design for printable bases
- Creating custom components

This is for users who want to understand the design process, contribute to the project, or create custom variations.

## PCB Design

### Design Tools

**KiCAD** (Recommended)
- Open-source, free, industry-standard
- All Circuit Nodes components designed in KiCAD

### Design Specifications

#### PCB Dimensions
- **Size**: 40mm × 40mm (fixed for compatibility)
- **Thickness**: Standard 1.6mm
- **Color**: Black solder mask recommended (most durable)
- **Silkscreen**: White, 0.6mm minimum line width for clarity
- **Finish**: Lead-free HASL or ENIG

---

## Manufacturing

### Ordering PCBs

#### PCB Fabrication Services

**Recommended/Budget-Friendly**
- **JLCPCB** (China-based, very affordable, fast)
- **PCBWay** (Competitive pricing, good quality)
- **Aisler** (Europe-based, higher cost but local support)

**Features to Request**
- Black solder mask (more durable than green)
- White silkscreen (high contrast for clarity)
- HASL lead-free finish
- Standard 1.6mm thickness
- No minimum order (or low MOQ)

#### Cost Estimates
- **Single PCB**: $1-5 depending on complexity and service
- **Batch of 10-50**: $0.50-2 per unit
- **Batch of 100+**: $0.25-1 per unit

#### Educational Discounts
- Many manufacturers offer **educational discounts**
- Provide school letter or student ID
- Typical discount: 10-30% off

---

## 3D Base Manufacturing

### Design Tools

**FreeCAD** (Recommended)
- Open-source, excellent for mechanical parts
- All Circuit Nodes bases designed in FreeCAD
- Precise CAD modeling
- Can export to multiple formats

**Alternatives**
- Fusion 360 (free tier, professional quality)
- OpenSCAD (programmatic CAD)
- Tinkercad (beginner-friendly, limited precision)

### Batch Production Efficiency

**Print Plate Utilization** (Research-backed data from publication)
- Medium-sized FDM printers fit: **20-25 bases per plate**
- Complete print run: **~23 hours** on hobby-level printers with no user intervention
- Material per base: **<10g PLA filament**
- Filament cost per base: **$0.05-0.15**

**Efficiency at Scale**
- Single base: Print ~45-60 min
- 20-24 bases in one print job per day
- **Cost per unit**: Approaches $0.30 at scale

**Assembly Time**
- **Electric screw driver with low torque settings recommended**
- Inserting magnetic connectors <1min per piece
- screwing 1-2min per piece
- soldering <1min per piece
- With 2 people: Can prepare 100+ bases in one afternoon

### Base Design Specifications

#### Overall Dimensions
- **Size**: 40mm × 40mm (to match PCB)
- **Height**: 20mm
- **Wall Thickness**: 1.2-1.5mm minimum

### 3D Printing

#### Print Parameters

---

## Contributing Designs

### Submission Guidelines

Want to contribute new components or improvements?

1. **Fork** the repository on GitHub
2. **Create a branch** for your component
3. **Add design files**:
   - KiCAD schematic and PCB files
   - FreeCAD or STL files (if base improvements)
   - Gerber files (optional but helpful)
4. **Document**: README with specifications and usage
5. **Create pull request** with description
6. **License**: Ensure CC-BY-NC-SA compliance

### Design Requirements for Contributions

- Compatibility with 40×40mm footprint
- Standard magnetic connector pads on edges
- Readable schematic on silkscreen
- Educational value or practical function
- Cost-effective using common components
- CC-BY-NC-SA license compatibility
