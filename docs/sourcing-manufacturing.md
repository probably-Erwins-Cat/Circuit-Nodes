---
layout: default
title: Sourcing & Manufacturing
---

# Sourcing & Manufacturing

This combined article explains where to obtain or produce Circuit Nodes parts, components, and complete sets, and why the system is well suited for classrooms. It brings together practical manufacturing guidance and research evidence from teacher evaluations.

## Procuring Parts and Sets

You can acquire components in three ways:

1. **Download and produce yourself** – use the open-source design files to order PCBs and 3D print bases, then assemble kits.
2. **Order from a central hub** – some educators or makerspaces batch-produce complete sets for local schools.
3. **Pre‑made kits** – occasional community bundles may be sold or shared; check the project README or contact maintainers.

The remainder of this page describes the technical steps for self‑production, cost considerations, and the evidence that these efforts pay off in educational settings.

## PCB Design & Ordering

### Design Tools

**KiCAD** is the recommended CAD tool:
- Open-source, free, and industry standard.
- All Circuit Nodes PCBs were created in KiCAD; source files are in the repository.

### Specifications

- **Footprint**: 40 mm × 40 mm for compatibility across all pieces. Multiple of this footprint work to and won't break the pattern
- **Thickness**: 1.6 mm typical.
- **Solder mask**: black is preferred for durability.
- **Silkscreen**: white, ≥0.6 mm line width for legibility.
- **Finish**: lead‑free HASL or ENIG.

### Ordering Services

Budget‑minded providers:
- **JLCPCB** – very low cost and fast turnaround.
- **PCBWay** – competitive pricing and quality.
- **Aisler** – European option with local support.

When placing an order, specify the mask, silkscreen, and finish above; most have no minimum order quantity or offer low MOQ.

#### Cost Estimates

| Quantity | Unit Price |
|----------|------------|
| 1        | $1–5       |
| 10–50    | $0.50–2    |
| 100+     | $0.25–1    |

Some vendors provide **educational discounts** when you supply a school letter or student ID.

## 3D Base Production

### Tools & Formats

- **FreeCAD** is the default for base designs (files in `printable-bases/`).
- various printable file formats are already provided in various tolerance classes

### Batch Efficiency

- **Plate yield**: about 20–25 bases on a medium FDM printer plate.
- **Print time**: ~23 h for full plate; single base ≈45–60 min.
- **Cost per unit** drops to ~$0.30 at scale.

### Assembly

1. Insert magnetic connectors (<1 min).
2. Screw base parts together (1–2 min).
3. Solder contact pads if not pre‑assembled (<1 min).

With two people working, 100+ bases can be ready in an afternoon.

### Design Specs

- *Size*: 40 mm × 40 mm to match PCBs.
- *Height*: 20 mm.
- *Wall thickness*: 1.2–1.5 mm minimum.

## Building and Sourcing Complete Sets

For classrooms, assembling full kits of components can be managed in-house or outsourced:

- Teachers or students print and assemble bases, order PCBs, and package components into sets.
- **Central manufacturing hubs** (university departments, makerspaces, regional labs) can produce batches and distribute at cost.
- Community initiatives may sell or donate pre‑assembled kits.

This approach keeps per‑student cost low while providing high-quality, customizable equipment.

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
