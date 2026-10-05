# Polarized capacitor (ruggedized)

This 40 x 40 mm module combines a polarized capacitor with reverse-polarity and transient-voltage protection, plus a discharge resistor. It is intended for classroom experiments with charge storage, supply smoothing, and RC circuits. The added parts make it more tolerant of wiring mistakes, but it still needs a suitably rated capacitor and a current-limited supply.

<img src="component_capacitor-polarized_ruggedized_TOP.png" alt="Ruggedized polarized capacitor diagram face" width="400"> <img src="component_capacitor-polarized_ruggedized_BOTTOM.png" alt="Ruggedized polarized capacitor component face, SMD assembly option" width="400">

## Circuit and assembly options

The capacitor and all three protection/discharge parts are connected across the same positive and negative terminals.

| Reference | Part or footprint | Function |
| --- | --- | --- |
| C1 | Radial THT capacitor, 8 mm body, 5 mm lead spacing | THT assembly option |
| C2 | SMD electrolytic capacitor, 10 x 12.5 mm footprint | SMD assembly option |
| D1 | SMAJ26CA, SMA | Bidirectional TVS diode for transient-voltage suppression |
| D2 | PMEG6030, SOD-128 | Schottky diode across the terminals to limit reverse voltage |
| R1 | 1 MΩ, 1206 | Bleeder resistor to discharge the capacitor after disconnection |

**Populate either C1 or C2.** The two capacitor footprints overlap physically and are alternative assembly options. The component-face image shows C2 populated. Capacitance and voltage rating are not specified by the current schematic; choose them for the intended experiment and supply voltage.

## Typical uses and teaching notes

- Demonstrate capacitor charging and discharging in an RC circuit.
- Smooth supply ripple or provide local energy storage in a DC circuit.
- Compare an unprotected capacitor module with this protected version.

The bleeder resistor affects discharge experiments: with the supply disconnected and no other load, the nominal time constant is `1 MΩ × C`. An external discharge resistor acts in parallel with R1. The diodes also make this module different from an ideal capacitor when the applied voltage is reversed or reaches their conduction region.

## Operating limits

## Choosing a capacitor for teaching

For an initial RC experiment, consider **220 µF at a 5 V supply**, with an
external **47 kΩ discharge resistor**. This gives roughly a 10-second time
constant and stores about 2.75 mJ, allowing several readings with a basic
multimeter without increasing capacitance merely to slow the experiment.

A reputable **solid aluminium-polymer capacitor** is worth considering for
long-term classroom kits since they provide longer shelf-life.For measuring slow discharge curves, a **low-leakage, long-life wet aluminium electrolytic** can also be a good choice, leakage comparable to the discharge current makes the curve depart from an ideal RC exponential. Choose a voltage rating above the intended supply.

### Time constant and measurement

For an ideal discharge, `τ = R_eff C` and `V(t) = V₀ exp(−t/τ)`. After one
time constant the voltage is about 37% of its initial value; after five time
constants it is about 0.7%. Aim for roughly **5–20 seconds per time constant**
for readings taken by hand with an inexpensive multimeter.

The module's 1 MΩ bleeder and a voltmeter both load the capacitor:

`R_eff = 1 / (1/R_ext + 1/(1 MΩ) + 1/R_meter)`

## Operating limits

- Connect the terminals according to the printed + and − markings. D2 limits reverse voltage by conducting; it does not disconnect a reversed supply. Use a current-limited supply or upstream overcurrent protection.
- D1 is intended for transients, it does not guarantee protection against sustained overvoltage.
- R1 discharges the capacitor gradually.
- Avoid shorting a charged capacitor. Stored energy and discharge current depend on the fitted capacitor and the surrounding circuit.
