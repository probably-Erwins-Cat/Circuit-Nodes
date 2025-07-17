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
| [component_capacitor-polarized_THT_replacable_SMT](component_capacitor-polarized_THT_replacable_SMT) | <img src="/component_capacitor-polarized_THT_replacable_SMT/component_capacitor_THT_2.5mm-spacing_replacable_SMT_TOP.png" width="80"/><img src="/component_capacitor-polarized_THT_replacable_SMT/component_capacitor_THT_2.5mm-spacing_replacable_SMT_TOP.png" width="80"/> |


to-do

# Kits

to-do
