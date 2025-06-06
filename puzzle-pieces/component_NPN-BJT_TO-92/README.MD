# Intro  
An **NPN Bipolar Junction Transistor (BJT)** is an electronic component that **controls a large current using a small current**. It is often used as a switch or an amplifier.  
Unlike MOSFETs, which are controlled by voltage, BJTs are **controlled by current** flowing into the **Base (B) terminal**.  

<img src="component_NPN-BJT_TO-92_TOP.png" alt="Circuit Diagram" width="400"> <img src="component_NPN-BJT_TO-92__BOTTOM.png" alt="Circuit Diagram" width="400">


# Functional Description  

The Three Terminals and Their Roles  

| **BJT (Electricity)** | function |
|-----------------------|----------------------------------|
| **Collector (C)** | Where current enters |
| **Emitter (E)** | Where current exits |
| **Base (B)**  | Controls the flow |

## How It Works  
- **Base Current OFF (No current to Base, IB = 0):** The transistor **blocks current**.
- **Base Current ON (Small current to Base, IB > 0):** The transistor **allows current to flow**.

Unlike MOSFETs, where a small **voltage** controls the switch, a BJT requires a small **current** at the Base terminal to turn on. Thus, a BJT is technically a (linear) current amplifier.

# Comparison: NPN BJT vs. N-Channel MOSFET  

# For What BJTs are Used  
**NPN BJTs are commonly used in:**  
* **Signal amplification:** Boosting weak electrical signals, e.g., in audio circuits.  
* **Switching applications:** Controlling small motors, LEDs, and relays.  
* **Analog circuits:** Used in operational amplifiers and sensor circuits.  

## Advantages of an NPN BJT  
* **Good for analog applications:** Provides smooth, continuous current control.  
* **Easier to drive:** Works well with low-voltage control signals.  
* **Can amplify current:** Useful for weak signals that need boosting.  

While an **N-Channel MOSFET** and an **NPN Bipolar Junction Transistor (BJT)** can both be used as switches, they operate differently:  

| **Feature**            | **N-Channel MOSFET** | **NPN BJT** |
|------------------------|---------------------|------------|
| **Control Signal**      | Voltage-controlled (Gate-Source) | Current-controlled (Base-Emitter) |
| **Efficiency**         | Higher, almost no power wasted at Gate | Lower, Base consumes current |
| **On-State Resistance, Heat** | Very low resistance (milliohms) and heat generation | higher resistance (ohms) and heat generation |
| **Response Behavior**  | digital/binary: mostly ON or OFF | analog/linear: smooth amplification possible even at low voltages |
| **Best For**           | High-power switching, efficiency-critical applications | Low-power analog amplification, simpler circuits |

### Key Takeaways  
- **BJTs excel in analog applications** where smooth current control is needed (e.g., amplifiers).  
- **MOSFETs are better for efficient switching** (e.g., power circuits, microcontrollers).  
- **BJTs generate more heat** due to higher voltage drop (V_CE), while MOSFETs have much lower ON resistance (R_DS(on)).  

# Compatible and Recommended Part(s)  
All NPN BJTs with long and flexible enough legs are compatible TO-92 housing recommended. Vefore soldering, double check the pinout of the three legs so the NPN BJT is not accidentally soldered in the wrong way.
When selecting a BJT, always check:
- **Current gain (h_FE)**
- **Collector-Emitter voltage (V_CE)**
- **Maximum current rating (I_C)**

The recommended parts are 
* 2N2222
* S9013
* S8050
