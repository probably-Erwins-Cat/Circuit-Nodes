# Intro

Here are all puzzle pieces collected and constantly updated. The naming schemes follows the schematic pictogram names, i.e. the name of the actual component, e.g. 2N7000, is not part of it. Withing the dedicated folders of the puzzle pieces you will find another README specifying the component names that are compatible with the pictogram, e.g. the folder "n-channel-mosfet" contains the puzzle piece for a pictographic n-channel mosfet and also specifies which n-channel mosfets are a good choice for that specific puzzle piece, 2N7000.

# Design Template

They layout of the puzzle pieces is always the same and only adapts traces, drilling holes and solder points for components. The cornerstone of the layout is:
* 40x40mm square outline
* Rounded corners, radius = 4mm
* 4 screw holes/eyelets in the corner, 4mm away from the edges, 2.9mm-3mm diameter. This ensures that M3 counter bore screws will auto-align the PCBs, and also M2 counter sunks crews will not sink through
* Copper pour should have large gap from active circuitry. Copper pour should neither be connected to GND or V_supply
* No copper pour 2mm around the board edge
* pictogram line style 2mm thick (approx 5.7pts) when possible. Rounded edges preferred.

# Board-to-Board connector selection

Currently, the boards are designed for integrated magnetic pogo connectors, see dedicated folder for board-to-board connector. The layout of the puzzle pieces must fit to those connectors.

# Overview of Circuit Nodes

| Name                |  Image                                   |
|---------------------|-----------------------------------------|
| [breadboard_grid-2.54mm_1x1](breadboard_grid-2.54mm_1x1) | <img src="/puzzle-pieces/breadboard_grid-2.54mm_1x1/breadboard_grid-2.54mm_1x1_TOP.png" width="200"/><img src="/puzzle-pieces/breadboard_grid-2.54mm_1x1/breadboard_grid-2.54mm_1x1_BOTTOM.png" width="200"/> |
| [breadboard_grid-2.54mm_1x2](breadboard_grid-2.54mm_1x2) | <img src="/puzzle-pieces/breadboard_grid-2.54mm_1x2/breadboard_grid-2.54mm_1x2_TOP.png" width="200"/><img src="/puzzle-pieces/breadboard_grid-2.54mm_1x2/breadboard_grid-2.54mm_1x2_BOTTOM.png" width="200"/> |
| [breadboard_grid-2.54mm_2x2](breadboard_grid-2.54mm_2x2) | <img src="/puzzle-pieces/breadboard_grid-2.54mm_2x2/breadboard_grid-2.54mm_2x2_TOP.png" width="200"/><img src="/puzzle-pieces/breadboard_grid-2.54mm_2x2/breadboard_grid-2.54mm_2x2_BOTTOM.png" width="200"/> |
| [component_LED_THT](component_LED_THT) | <img src="/puzzle-pieces/component_LED_THT/component_LED_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_LED_THT/component_LED_THT_BOTTOM.png" width="200"/> |
| [component_LED_THT_replacable_SMT](component_LED_THT_replacable_SMT) | <img src="/puzzle-pieces/component_LED_THT_replacable_SMT/component_LED_THT_replacable_SMT_TOP.png" width="200"/><img src="/puzzle-pieces/component_LED_THT_replacable_SMT/component_LED_THT_replacable_SMT_BOTTOM.png" width="200"/> |
| [component_diode_THT](component_diode_THT) | <img src="/puzzle-pieces/component_diode_THT/component_diode_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_diode_THT/component_diode_THT_BOTTOM.png" width="200"/> |
| [component_diode-Zener_THT](component_diode-Zener_THT) | <img src="/puzzle-pieces/component_diode-Zener_THT/component_diode-Zener_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_diode-Zener_THT/component_diode-Zener_THT_BOTTOM.png" width="200"/> |
| [component_NPN-BJT_TO-92](component_NPN-BJT_TO-92) | <img src="/puzzle-pieces/component_NPN-BJT_TO-92/component_NPN-BJT_TO-92_TOP.png" width="200"/><img src="/puzzle-pieces/component_NPN-BJT_TO-92/component_NPN-BJT_TO-92_BOTTOM.png" width="200"/> |
| [component_capacitor-polarized_THT](component_capacitor-polarized_THT) | <img src="/puzzle-pieces/component_capacitor-polarized_THT/component_capacitor-polarized_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_capacitor-polarized_THT/component_capacitor-polarized_THT_BOTTOM.png" width="200"/> |
| [component_capacitor-polarized_THT_replacable_SMT](component_capacitor-polarized_THT_replacable_SMT) | <img src="/puzzle-pieces/component_capacitor-polarized_THT_replacable_SMT/component_capacitor_THT_2.5mm-spacing_replacable_SMT_TOP.png" width="200"/><img src="/puzzle-pieces/component_capacitor-polarized_THT_replacable_SMT/component_capacitor_THT_2.5mm-spacing_replacable_SMT_BOTTOM.png" width="200"/> |
| [component_inductance_THT](component_inductance_THT) | <img src="/puzzle-pieces/component_inductance_THT/component_inductance_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_inductance_THT/component_inductance_THT_BOTTOM.png" width="200"/> |
| [component_lamp-E10_THT](component_lamp-E10_THT) | <img src="/puzzle-pieces/component_lamp-E10_THT/component_lamp-E10_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_lamp-E10_THT/component_lamp-E10_THT_BOTTOM.png" width="200"/> |
| [component_mosfet_n-channel_TO-92](component_mosfet_n-channel_TO-92) | <img src="/puzzle-pieces/component_mosfet_n-channel_TO-92/component_mosfet_n-channel_TO-92_TOP.png" width="200"/><img src="/puzzle-pieces/component_mosfet_n-channel_TO-92/component_mosfet_n-channel_TO-92_BOTTOM.png" width="200"/> |
| [component_resistor_THT_3W](component_resistor_THT_3W) | <img src="/puzzle-pieces/component_resistor_THT_3W/component_resistor_THT_3W_TOP.png" width="200"/><img src="/puzzle-pieces/component_resistor_THT_3W/component_resistor_THT_3W_BOTTOM.png" width="200"/> |
| [component_switch-On-OFF_THT](component_switch-On-OFF_THT) | <img src="/puzzle-pieces/component_switch-On-OFF_THT/component_switch-On-OFF_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_switch-On-OFF_THT/component_switch-On-OFF_THT_BOTTOM.png" width="200"/> |
| [component_switch-On1-OFF-On2_THT](component_switch-On1-OFF-On2_THT) | <img src="/puzzle-pieces/component_switch-On1-OFF-On2_THT/component_switch-On1-OFF-On2_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_switch-On1-OFF-On2_THT/component_switch-On1-OFF-On2_THT_BOTTOM.png" width="200"/> |
| [component_switch-On1-On2_THT](component_switch-On1-On2_THT) | <img src="/puzzle-pieces/component_switch-On1-On2_THT/component_switch-On1-On2_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_switch-On1-On2_THT/component_switch-On1-On2_THT_BOTTOM.png" width="200"/> |
| [component_switch-micro-Normally-Closed_THT](component_switch-micro-Normally-Closed_THT) | <img src="/puzzle-pieces/component_switch-micro-Normally-Closed_THT/component_switch-micro-Normally-Closed_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_switch-micro-Normally-Closed_THT/component_switch-micro-Normally-Closed_THT_BOTTOM.png" width="200"/> |
| [component_switch-micro-Normally-Open_THT](component_switch-micro-Normally-Open_THT) | <img src="/puzzle-pieces/component_switch-micro-Normally-Open_THT/component_switch-micro-Normally-Open_THT_TOP.png" width="200"/><img src="/puzzle-pieces/component_switch-micro-Normally-Open_THT/component_switch-micro-Normally-Open_THT_BOTTOM.png" width="200"/> |
| [end-node-double_AC](end-node-double_AC) | <img src="/puzzle-pieces/end-node-double_AC/end-node-double_AC_TOP.png" width="200"/><img src="/puzzle-pieces/end-node-double_AC/end-node-double_AC_BOTTOM.png" width="200"/> |
| [end-node-double_blank](end-node-double_blank) | <img src="/puzzle-pieces/end-node-double_blank/end-node-double_blank_TOP.png" width="200"/><img src="/puzzle-pieces/end-node-double_blank/end-node-double_blank_BOTTOM.png" width="200"/> |
| [end-node-double_current](end-node-double_current) | <img src="/puzzle-pieces/end-node-double_current/end-node-double_current_TOP.png" width="200"/><img src="/puzzle-pieces/end-node-double_current/end-node-double_current_BOTTOM.png" width="200"/> |
| [end-node-double_plus-minus](end-node-double_plus-minus) | <img src="/puzzle-pieces/end-node-double_plus-minus/end-node-double_plus-minus_TOP.png" width="200"/><img src="/puzzle-pieces/end-node-double_plus-minus/end-node-double_plus-minus_BOTTOM.png" width="200"/> |
| [end-node-single_blank](end-node-single_blank) | <img src="/puzzle-pieces/end-node-single_blank/end-node-single_blank_TOP.png" width="200"/><img src="/puzzle-pieces/end-node-single_blank/end-node-single_blank_BOTTOM.png" width="200"/> |
| [end-node-single_minus](end-node-single_minus) | <img src="/puzzle-pieces/end-node-single_minus/end-node-single_minus_TOP.png" width="200"/><img src="/puzzle-pieces/end-node-single_minus/end-node-single_minus_BOTTOM.png" width="200"/> |
| [end-node-single_plus](end-node-single_plus) | <img src="/puzzle-pieces/end-node-single_plus/end-node-single_plus_TOP.png" width="200"/><img src="/puzzle-pieces/end-node-single_plus/end-node-single_plus_BOTTOM.png" width="200"/> |
| [wire-T-crossing_blank](wire-T-crossing_blank) | <img src="/puzzle-pieces/wire-T-crossing_blank/wire-T-crossing_blank_TOP.png" width="200"/><img src="/puzzle-pieces/wire-T-crossing_blank/wire-T-crossing_blank_BOTTOM.png" width="200"/> |
| [wire-T-crossing_node-voltage](wire-T-crossing_node-voltage) | <img src="/puzzle-pieces/wire-T-crossing_node-voltage/wire-T-crossing_node-voltage_TOP.png" width="200"/><img src="/puzzle-pieces/wire-T-crossing_node-voltage/wire-T-crossing_node-voltage_BOTTOM.png" width="200"/> |
| [wire-X-crossing_blank](wire-X-crossing_blank) | <img src="/puzzle-pieces/wire-X-crossing_blank/wire-X-crossing_blank_TOP.png" width="200"/><img src="/puzzle-pieces/wire-X-crossing_blank/wire-X-crossing_blank_BOTTOM.png" width="200"/> |
| [wire-X-crossing_node-voltage](wire-X-crossing_node-voltage) | <img src="/puzzle-pieces/wire-X-crossing_node-voltage/wire-X-crossing_node-voltage_TOP.png" width="200"/><img src="/puzzle-pieces/wire-X-crossing_node-voltage/wire-X-crossing_node-voltage_BOTTOM.png" width="200"/> |
| [wire-angle_blank](wire-angle_blank) | <img src="/puzzle-pieces/wire-angle_blank/wire-angle_blank_TOP.png" width="200"/><img src="/puzzle-pieces/wire-angle_blank/wire-angle_blank_BOTTOM.png" width="200"/> |
| [wire-angle_node-voltage](wire-angle_node-voltage) | <img src="/puzzle-pieces/wire-angle_node-voltage/wire-angle_node-voltage_TOP.png" width="200"/><img src="/puzzle-pieces/wire-angle_node-voltage/wire-angle_node-voltage_BOTTOM.png" width="200"/> |
| [wire-bridge_blank](wire-bridge_blank) | <img src="/puzzle-pieces/wire-bridge_blank/wire-bridge_blank_TOP.png" width="200"/><img src="/puzzle-pieces/wire-bridge_blank/wire-bridge_blank_BOTTOM.png" width="200"/> |
| [wire-straight_blank](wire-straight_blank) | <img src="/puzzle-pieces/wire-straight_blank/wire-straight_blank_TOP.png" width="200"/><img src="/puzzle-pieces/wire-straight_blank/wire-straight_blank_BOTTOM.png" width="200"/> |
| [wire-straight_node-voltage](wire-straight_node-voltage) | <img src="/puzzle-pieces/wire-straight_node-voltage/wire-straight_node-voltage_TOP.png" width="200"/><img src="/puzzle-pieces/wire-straight_node-voltage/wire-straight_node-voltage_BOTTOM.png" width="200"/> |
| [wire-two-angles_blank](wire-two-angles_blank) | <img src="/puzzle-pieces/wire-two-angles_blank/wire-two-angles_blank_TOP.png" width="200"/><img src="/puzzle-pieces/wire-two-angles_blank/wire-two-angles_blank_BOTTOM.png" width="200"/> |
| [X](X) | <img src="/puzzle-pieces/X/X_TOP.png" width="200"/><img src="/puzzle-pieces/X/X_BOTTOM.png" width="200"/> |





to-do

# Kits

to-do
