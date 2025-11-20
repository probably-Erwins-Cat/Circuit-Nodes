
# Diode (THT)

A diode conducts current primarily in one direction and is commonly used for rectification, polarity protection, and signal steering. In classroom settings, general-purpose diodes are usually sufficient to demonstrate these behaviours.

<img src="component_diode_THT_TOP.png" alt="Diode top view" width="400"> <img src="component_diode_THT_BOTTOM.png" alt="Diode bottom view" width="400">

## Typical uses in circuits
- Reverse-voltage protection for circuits.
- Rectification in simple AC→DC experiments.
- Signal steering and basic logic demonstrations.

## Practical and safety notes
- Diodes require a series resistor when used with LEDs or in situations where current must be limited. Calculate the resistor with Ohm’s law:

\[R = \frac{V_{\text{supply}} - V_{\text{forward}}}{I_{\text{desired}}}\]

- Check the maximum forward current and package dissipation for the chosen diode (small glass diodes have lower current ratings than larger packages).

## Recommended parts
- Common, robust choices for demonstrations: 1N400x for general rectification; Schottky diodes (e.g., 1N5817–1N5819) where a low forward voltage is useful.