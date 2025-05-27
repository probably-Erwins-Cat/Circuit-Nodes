# Intro  
An **N-Channel MOSFET (Metal-Oxide-Semiconductor Field-Effect Transistor)** is an electronic component that works like a switch or amplifier. It controls the flow of electrical current in a circuit. Unlike mechanical switches, it has no moving parts and is controlled by a small voltage.
This ability **controlling a large current with a small voltage** is what makes MOSFETs so useful in modern electronics. 

<img src="component_mosfet_n-channel_TO-92_TOP.png" alt="Circuit Diagram" width="400"> <img src="component_mosfet_n-channel_TO-92_BOTTOM.png" alt="Circuit Diagram" width="400">

# Functional Description  

The three terminals are

| **terminal** | **function** |
|--------------------------|----------------------------------|
| **Drain (D)** | Where current enters |
| **Source (S)** | Where current exits |
| **Gate (G)** | Controls the flow  |

- **Gate OFF (No voltage applied, GND):** The mosfet acts like a closed valve, blocking current.
- **Gate ON (Voltage applied, V_on):** The mosfet acts like an open valve, allowing current to flow from Drain to Source.

# Where to place Mosfets in a Circuit
n-channel Mosfets are used for **low-side switching**, i.e. the to-be-switched components are placed on the high side = drain side. the low side should directly be connected to GND. If not followed, then the voltage levels in the circuit and mosfet terminals do not match the intended voltage levels for opening and closing the gate.

# Mosfet vs. NPN BJT  

## For what Mosfets are Used  
* **Power control:** Switching power to motors, power LEDs, or other components efficiently.  
* **Computers and microcontrollers:** Used inside processors and memory chips to switch signals extremely fast.  
* **Audio and signal amplification:** Boosting small signals in sound systems.  

# Advantages of an N-Channel mosfet  
* **Efficient:** Uses very little energy to switch large currents.  
* **Fast:** Can turn on and off millions of times per second.
* **Durable:** No mechanical wear since it has no moving parts.  

While an **N-Channel MOSFET** and an **NPN Bipolar Junction Transistor (BJT)** can both be used as switches, they operate differently:  

| **Feature**            | **N-Channel MOSFET** | **NPN BJT** |
|------------------------|---------------------|------------|
| **Control Signal**      | Voltage (Gate-Source) | Current (Base-Emitter) |
| **Efficiency**         | Higher, almost no power wasted at Gate | Lower, Base consumes current |
| **On-State Resistance, Heat** | Very low resistance (milliohms) and heat generation | higher resistance (ohms) and heat generation |
| **Response Behavior**  | More binary: mostly ON or OFF | Linear: smooth amplification possible even at low voltages |
| **Best For**           | High-power switching, efficiency-critical applications | Low-power analog amplification, simpler circuits |

### **Key Differences:**
- **MOSFETs act more like digital switches** → either fully ON or fully OFF, making them great for power electronics and digital circuits.  
- **BJTs provide a smooth, continuous response** → useful for amplifiers where you need to control the signal strength precisely.  

# Compatible and Recommended Part(s)  
Any logic-level MOSFET with long and flexible enough legs for the three terminals can be used, in theory. The TO-92 housing with wide legs is preferred. Also check the pinout of legs, not all follow the pinout of D-G-S. Some do not place the gate in the middle position.  

The recommended parts—cheap, reliable, and widely available—are:  
- **2N7000**  
- **BS170**  
