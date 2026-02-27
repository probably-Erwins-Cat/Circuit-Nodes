---
layout: default
title: Assembly Instructions
---

# Assembly Instructions

## Overview

This guide walks you through assembling Circuit Nodes from individual components. Whether you're building from scratch or preparing a pre-made kit, these steps apply.

![Assembly Reference]({{ site.baseurl }}/assets/assembly.png){: width="1000" }

### Why Assembly Matters

Assembling Circuit Nodes yourself (rather than buying pre-made) has educational value:

**For Teachers:**
- Understand the system intimately
- Customize components for your curriculum
- Repair damaged nodes quickly
- Build students' confidence in repair/maintenance

**For Students (in advanced classes):**
- Project-based learning opportunity
- Understand component function at deeper level
- Develop practical skills (soldering, 3D printing)
- Create ownership of learning materials

**From Research:**
Students who assemble learning materials develop stronger conceptual understanding than those using pre-made kits alone.

## Pre-Assembly Planning

### Step 1: Plan Your Circuit
- Decide what circuit you want to build
- List all components you need (resistors, LEDs, switches, breadboard nodes, etc.)
- Determine how many units you need of each
- Sketch the layout on paper or use a breadboard planning tool

### Step 2: Gather Your Materials

**Per PCB assembly, you'll need:**
- 1 PCB (circuit board)
- 4 M2 screws (self-tapping or regular)
- 1 3D-printed base
- Heat inserts (if using regular screws - typically 4 per base)
- Magnetic connectors (for each connection point - typically 4-8 per piece)
- Soldering iron + solder (for component soldering)

**Tools required:**
- Soldering iron (25-40W recommended)
- Solder (lead-free recommended)
- Small screwdriver (M2 size)
- Multimeter (for testing)
- Diagonal cutters (for trimming component leads)

## PCB Preparation

### Step 3: Solder Components to PCB

1. **Check the PCB schematic** printed on the silkscreen
2. **Identify component locations** marked on the board
3. **Solder components** according to the schematic:
   - Use appropriate solder iron temperature for components
   - Trim excess lead material after soldering
   - Ensure soldered connections are clean and shiny
4. **Visual inspection**:
   - No cold solder joints (should look smooth and shiny)
   - No solder bridges between pads
   - All components secure

### Step 4: Quality Check

Before proceeding, test the PCB:
- Use a multimeter to verify continuity where expected
- Check that no unintended shorts exist
- Apply power briefly to check for major faults
- Look for any visible manufacturing defects

## Base Assembly

### Step 5: Choose Your Base Style

Select one of the available base styles:

**Magnetic-Bottom Base**
- Best for magnetic board display
- Allows magnet installation
- Reduced internal height (~16mm)
- Ideal for classroom demonstrations

**Open-Bottom Base**
- Maximum internal height (~19mm)
- Allows access to component underside for repairs
- Minimal material usage
- Most cost-effective to print

**Skeletonized Base**
- Interior visible from top
- Prevents accidental finger access
- Moderate material usage
- Good for educational display

### Step 6: Prepare Base for PCB Installation

1. **Check tolerance fit**:
   - Test that the PCB slides into the base mounting posts
   - Should be snug but not forced
   - If too tight or loose, adjust next print tolerance

2. **Install heat inserts (if using regular screws)**:
   - Pre-heat soldering iron to 260°C
   - Press heat insert into position until flush with base
   - Heat insert should settle securely
   - Allow to cool before proceeding

3. **Ensure all mounting points are clear**:
   - No print artifacts blocking screw holes
   - Smooth surface for screws to sink into

### Step 7: Install Magnetic Connectors

The magnetic connectors are small permanent magnets that serve as both physical and electrical connectors.

**Connector Types:**
- Most connections use standard neodymium magnets
- Alignment is typically marked on the base with small pockets

**Installation process:**
1. Identify which connector pads need magnets (marked on base design)
2. Press magnetic connectors into the designated pockets:
   - Magnets should sit flush or slightly recessed
   - Orientation matters - north/south poles should align properly
   - Test fit before final placement
3. Verify connectors are secure and won't fall out

**Important**: Test polarity of magnets:
- Adjacent connectors should **attract** (different poles facing)
- This ensures proper electrical contact and physical stability

### Step 8: Mount PCB to Base

1. **Align PCB with base**:
   - Guide PCB leads/pads into the magnetic connector pockets
   - Ensure alignment before applying pressure

2. **Insert screws**:
   - Start with all 4 screws loosely threads (not fully tight)
   - This helps with alignment

3. **Tighten screws evenly**:
   - Tighten in a cross pattern (opposite corners)
   - Don't over-tighten - fingers should be able to turn screw
   - PCB should be level and stable

4. **Final check**:
   - PCB is horizontally level
   - No wobbles or flexing
   - Magnetic connectors make good contact

## Assembly Complete

### Step 9: Test the Assembly

1. **Visual inspection**:
   - All connections are secure
   - No loose components or wires
   - PCB is properly aligned

2. **Electrical testing**:
   - Apply appropriate power source
   - Check for expected behavior
   - Use multimeter to verify circuit operation

3. **Strength test**:
   - Gently attempt to remove magnetic connectors - should require deliberate effort
   - No parts rattling internally

## Building Your Circuit

### Step 10: Connect Multiple Pieces

Now that you have assembled individual modules:

1. **Arrange pieces** in desired configuration
2. **Connect magnetic connectors** between pieces:
   - Align matching connector types
   - Push pieces together gently - magnets ensure proper contact
   - The magnetic attraction should be strong enough to hold assembly

3. **Verify connections**:
   - All intended pathways are connected
   - No unintended contact between modules
   - Circuit layout matches your design

4. **Add power and test**:
   - Connect power source
   - Test functionality
   - Use multimeter to verify expected voltages and currents

## Troubleshooting

### Assembly Issues

**PCB doesn't fit in base**
- Check tolerance of next 3D print (try 0.15mm tolerance)
- Verify PCB thickness matches base design

**Screws won't tighten**
- Check for print artifacts blocking holes
- Ensure proper heat insert installation
- Try different screw size

**Magnetic connectors fall out**
- Verify pocket depth in base
- Consider using small drop of super glue (carefully!)
- Check magnet orientation

**Pieces don't connect magnetically**
- Verify magnet orientation (should attract, not repel)
- Check for paint or debris on connector pads
- Test magnet strength with multimeter continuity check

### Electrical Issues

**No power/no continuity**
- Verify solder joints on PCB (reflow if needed)
- Check magnetic connector contact with multimeter
- Test power source independently

**Intermittent connections**
- Clean connector surfaces
- Re-seat magnetic connectors
- Check for corrosion

---

**Congratulations!** Your Circuit Nodes are assembled and ready. 

**Next steps:**
- [Component Guide](05-component-guide) - Explore what components do
- [Advanced Topics](07-advanced-topics) - See example circuits
- [Getting Started](02-getting-started) - Back to overview

