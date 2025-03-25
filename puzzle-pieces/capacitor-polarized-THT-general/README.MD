# Intro  
A **polarized capacitor** is an electronic component that **stores and releases electrical energy**. It is used in circuits to smooth out voltage, filter signals, and store energy for brief periods.  
Unlike regular capacitors, **polarized capacitors have a positive (+) and a negative (-) side**, meaning they must be connected in the correct orientation.  

# For What It Is Used  
**Polarized capacitors are commonly used in:**  
- **Power supplies:** Smoothing out fluctuations in voltage (e.g., after a rectifier).  
- **Audio circuits:** Blocking DC voltage while allowing AC signals to pass.  
- **Energy storage:** Providing a quick burst of power when needed.  

## Advantages of Polarized Capacitors  
* **High capacitance:** Can store more energy than non-polarized capacitors of the same size.  
* **Reliable for energy buffering:** Helps stabilize voltage in circuits.  

# Functional Description  

A **capacitor stores electrical charge**, similar to how a **flexible membrane inside a water pipe stores energy**. The higher the applied voltage (pressure), the more charge (water) can be stored. When the voltage is higher than allowed, the capacitor insulation (membrane) will irreversibly break, destroying the capacitor.

## The Two Terminals and Their Roles  

| **Capacitor (Electricity)** | **Water Analogy (Hydrodynamics)** |
|----------------------------|----------------------------------|
| **Positive (+) terminal** | **One side of a flexible membrane** inside a pipe |
| **Negative (-) terminal** | **The other side of the membrane** |
| **Charging (current flows in)** | Water pushes against the membrane, stretching it |
| **Discharging (current flows out)** | The membrane returns to its normal shape, pushing water back |

## How It Works  
- **Charging:** When voltage is applied, **charge flows in**, pushing against an internal insulating layer (like a rubber membrane) and storing energy.  
- **Discharging:** When the voltage source is removed, the stored energy is released as current flows back out.  
- **Blocking DC / Passing AC:** The capacitor **blocks direct current (DC)** because once charged, no more current flows. However, **alternating current (AC) can pass**, as the charge builds and releases in cycles.  

# Important Considerations  

⚠️ **Polarity Matters!** If connected **backwards**, a polarized capacitor **may overheat, leak, or even explode**.  
⚠️ **Voltage Rating:** The capacitor’s voltage rating **must be higher than the circuit voltage** to avoid failure. 

# Compatible and Recommended Part(s)  
Any standing THT capacitor will be compatible. However, **slow** charging and discharging is best to illustrate its functionality in school settings. Therefore, capacitors with large capacity and reasonable high voltage rating is preferred, which tpyically are rather large. Further, they should be charged with a high-ohmic resistor (high kOhm or perhaps even MOhm). Lastly, irrationally large capacitors pose a tiny danger in school settings as they store energy and can release all their energy rapidly when shorting the circuit.
For that reason, I recommend capacitors arround **100µF**.
