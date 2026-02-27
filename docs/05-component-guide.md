---
layout: default
title: Component Guide
---

# Component Guide

## Overview

This section documents all available Circuit Nodes components. Each component is designed as a modular 40×40mm PCB that can be combined with others to create circuits.

Components are organized by category for easy navigation.

## Component Categories

### Power Distribution & Connections

**End Nodes**
- [Single Blank](#) - Basic connection point
- [Single Plus](#) - Positive power connection
- [Single Minus](#) - Negative/ground connection
- [Double Blank](#) - Two connection points
- [Double Plus-Minus](#) - Standard power rails
- [Double Plus-Minus with Protection](#) - Power with protection diodes
- [Double Plus-Minus with USB-PD](#) - USB Power Delivery
- [Double AC](#) - AC connection points
- [Double Current](#) - Current measurement points

### Passive Components

**Resistors**
- [SMT Resistors](#) - Surface mount, various values
- [SMT Resistors (Top-Mount)](#) - Accessible configuration
- [SMT Resistors with Printed Value](#) - Value labeled for easy identification
- [THT 3W Resistors](#) - High power through-hole
- [THT 3W with Printed Value](#) - High power, labeled

**Capacitors**
- [Polarized THT Capacitors](#) - Electrolytic, various values
- [Polarized THT with Replaceable SMT](#) - Upgradable design

**Inductors & Coils**
- [THT Inductors](#) - Various inductance values

### Active Components

**Diodes**
- [THT Diodes](#) - Standard rectifier diodes
- [Zener Diodes THT](#) - Voltage reference/regulation
- [PolyFuse (SMT)](#) - Current protection

**Transistors**
- [NPN BJT (TO-92)](#) - Classic bipolar junction transistor
- [N-Channel MOSFET (TO-92)](#) - Power switching, rugged variant
- [N-Channel MOSFET (Ruggedized)](#) - Heavy-duty version
- [Charge Pump Inverter](#) - Voltage inversion

### Optoelectronics

**LEDs**
- [LED THT](#) - Standard light-emitting diodes
- [LED THT with Replaceable SMT](#) - Upgradable LED design
- [Lamp E10 Socket](#) - Classic incandescent lamps

### User Input

**Switches**
- [On-Off Switch THT](#) - Simple on/off control
- [On1-On2 Switch THT](#) - Two-way selector
- [On1-Off-On2 Switch THT](#) - Three-way with center-off
- [Micro Switch (Normally Open)](#) - Momentary action, closes when pressed
- [Micro Switch (Normally Closed)](#) - Momentary action, opens when pressed

**Variable Components**
- [Potentiometer Slider THT](#) - 3-pin potentiometer
- [Potentiometer Slider (Screw-Mounted)](#) - Secured potentiometer
- [Potentiometer High-Power](#) - Rated for higher power dissipation

### Connectivity & Breadboarding

**Breadboard Grid (2.54mm)**
- [1×1 Grid](#) - Single connection point
- [1×2 Grid](#) - Two aligned connection points
- [2×2 Grid](#) - Four connection points in grid

### Wiring Components

**Wire Straight**
- [Blank](#) - Unconnected
- [Node Voltage](#) - Voltage measurement point

**Wire Angle (90°)**
- [Blank](#) - Unconnected
- [Node Voltage](#) - Voltage measurement point

**Wire Two-Angles (180°)**
- [Blank](#) - Unconnected

**Wire T-Crossing (3-way)**
- [Blank](#) - Unconnected
- [Node Voltage](#) - Voltage measurement point

**Wire X-Crossing (4-way)**
- [Blank](#) - Unconnected
- [Node Voltage](#) - Voltage measurement point

**Wire Bridge**
- [Blank](#) - Crosses over without connecting

### Measurement Points

**Voltage Measurement**
Available on various wire and crossing components - allows safe measurement without altering circuit current path

**Current Measurement**
End nodes with current measurement capability - measures total circuit current

---

## Component Specifications

### Physical Dimensions
- All PCBs: **40mm × 40mm**
- Height (without base): ~3mm
- Connector pads: Standard grid spacing (2.54mm)

### Electrical Specifications

**Operating Voltage Range**
- Standard components: 0-48V DC (safety limited by component ratings)
- USB-PD components: Dynamic, handles USB PD negotiation
- AC components: Designed for low-voltage AC (< 240V)

**Power Dissipation**
- Standard components: Component-dependent
- 3W resistors: Up to 3W continuous
- Check individual component datasheets for limits

**Connector Specifications**
- Magnetic contacts: Low-resistance connection (<100mΩ)
- Safe switching current: <10A for magnetic contacts
- Pull force: ~5-10N per connector pair

### Safety Features
- No high-voltage designs
- Fused designs available for protection
- Protective diodes on power distribution

---

## Choosing Components for Your Circuit

### Basic Circuit (3-5 pieces)
- 1 power source end node
- 1 resistor
- 1 LED or lamp
- 1 ground end node
- 1-2 wire connectors

### Intermediate Circuit (6-12 pieces)
- 2 power source end nodes
- 2-3 resistors
- 1-2 switches
- 2-3 active components (transistor, diode, etc.)
- 3-4 wire connectors
- Breadboard for complex routing

### Advanced Circuit (13+ pieces)
- Multiple power rails
- Complex component combinations
- Multiple measurement points
- Integrated circuits via breadboard
- Advanced routing with bridges/crossings

---

## Component Availability

**Repository Contents**: Full design files and Gerber files for all components listed above

**Customization**: Want a component that doesn't exist? Check [Design & Manufacturing](06-design-manufacturing) for how to create custom components

**Pre-made Kits**: Various curated kits available with specific component combinations

---

**Need help selecting components?** Check [Advanced Topics](07-advanced-topics) for example circuits that show component combinations.

**Want to learn more about each component?** Visit the puzzle-pieces folder in the repository for detailed specifications and 3D models of each component.

