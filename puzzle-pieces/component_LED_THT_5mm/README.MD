# Intro  
An **LED (Light-Emitting Diode)** is a special type of diode that emits light when electric current flows through it. Unlike regular light bulbs, LEDs are highly efficient and long-lasting. Their downside is their limited voltage and current range they can function.

<img src="component_LED_THT_5mm_TOP.png" alt="Circuit Diagram" width="400"> <img src="component_LED_THT_5mm_BOTTOM.png" alt="Circuit Diagram" width="400">

**This is the solder version of the LED**. Thus, it should be used carefully to not break it, otherwise it most be desoldered.

LEDs only allow current to flow in **one direction** (from the **Anode (+)** to the **Cathode (-)**). They require **a resistor in series** to limit current and prevent damage.  

# Typical forward voltage values:  
- **Red:** ~1.6 – 2.0V  
- **Orange:** ~2.0 - 2.1V
- **Yellow:** ~2.1 - 2.2V
- **Green:** ~2.2V – 3.2V  
- **Blue/White:** ~3.0V – 3.5V  

# Current Limiting Required
LEDs must be used with a **series resistor** to prevent excessive current.  
The resistor value can be calculated using Ohm’s Law:  

\[R = \frac{V_\text{supply} - V_\text{forward}}{I_\text{max,LED}}\]

It is recommended to use a supply voltage that is in the range of the forward voltage of the LED, otherwise large resistors (with large heat dissipation) are required. LEDs with current-limiting resistors are typically supplied with 5V. Standard 5mm THT LEDs have a maximum current of 20mA. Thus, a resistor around 
