# Intro  
An **inductance** is in its simplest form a coiled wire. Currents flowing through a wire generate a magnetic field around this wire. This magnetic field results in *counter-electromotive forces* caused by electromagentic inductance.

The voltage-current relation of a inductance follows 

\[U(t) = L \frac{\text{d}I(t)}{\text{d}t}\]

For school settings without differentials and integrals, the differentials can be replaced with the pre-differential idea of a simple difference $\text{d}t \approx \Delta t = t_2 - t_1$.

<img src="component_inductance_THT_TOP.png" alt="Circuit Diagram" width="400"> <img src="component_inductance_THT_BOTTOM.png" alt="Circuit Diagram" width="400">

# Important Considerations  

**inductances have a maximum current rating:** inductances often use thin wires for maximimzing the windings. Thin, tightly packed wire has bad heat dissipation, thus inductances are current-limited. 
**available inductivity, size consideration:** Large inductivity comes in large package size. THT inductances with up to 20mm height easily fit in when placed flat, as indicated.
**RL and RCL circuits:** Inductances are relevant where differentials in voltage and/or current occurs, i.e. AC and voltage/current spikes. Measuring the effect of an inductance in those scenarios either requires huge inductances (larger than compatible with this PCB) or measuring devices that can track quick changes in voltages, i.e. oscilloscopes. 

