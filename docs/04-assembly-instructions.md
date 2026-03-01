---
layout: default
title: Assembly Instructions
---

# Assembly Instructions

## Overview

This guide walks you through assembling Circuit Nodes from individual components. Whether you're building from scratch or preparing a pre-made kit, these steps apply.

Below are the three parts that come together: the printed base, a magnetic connector, and a populated PCB.

![Assembly explosion view]({{ site.baseurl }}/images/assembly-explosion-view.png){: width="800" }

## Pre‑Assembly

Prepare your PCB by soldering the required components. Double‑check the
silkscreen for correct orientation and values. Trim leads and clean flux
residue. A quick continuity check with a multimeter catches shorts before the
board is placed in its base.

You will need:

- populated PCB
- printed base (match the tolerance test)
- 4× M2 screws and optionally heat inserts
- magnet connector
- soldering iron, solder, and basic hand tools
- multimeter for verification

## PCB Preparation

### Solder Components to PCB

1. **Check the PCB schematic** printed on the silkscreen
2. **Identify component locations** marked on the board
3. **Solder components** according to the schematic

### Quality Check

Before proceeding, test the PCB:
- Use a multimeter to verify continuity where expected
- Check that no unintended shorts exist
- Apply power briefly to check for major faults
- Look for any visible manufacturing defects

## Base Preparation

### About Pogo Connectors

Circuit Nodes use spring-loaded **pogo connectors** with integrated magnets for reliable electrical and mechanical connection. Each connector has:
- Two spring-loaded pins for electrical contact
- North–south oriented magnets for alignment and pull
- Angled solder leads for PCB mounting
- Rounded plastic wings to guide insertion into the base

**Sourcing**: Available from LCSC, AliExpress, Taobao, or directly from the manufacturer (Samzo Components). Look for 2-pin spring-loaded pogo connectors with integrated magnets. Note: this part can experience stock delays; plan ahead.

### Install Magnets & Mount PCB

1. Push magnet connector into the base pockets; they should sit flush.
   Pay attention to north/south orientation – adjacent pads must attract.
2. Place the populated PCB onto the base, aligning the edge pads with the
   connector.  Hold the board in place and insert the four screws loosely.
3. Once all screws are started, tighten them in a cross pattern until the board
   is seated; do not over‑torque. The PCB should lie flat and not shift when
   nudged.

That's it – the module is assembled.


---

**Module assembled.**

Proceed to the [Component Guide](05-component-guide) for details on using the
module in a circuit, or return to [Getting Started](02-getting-started) for
other chapters.

