# Puzzle pieces without PCB sources

These 34 immediate `puzzle-pieces` folders had `_TOP.png` and `_BOTTOM.png`
images but no `.kicad_pcb` file during the October 2026 catalog migration. Their
existing images were left unchanged. Add the matching PCB sources before asking
the renderer to replace them.

## Components (15)

- `component_diode-Zener_THT`
- `component_fuse-PolyFuse_SMT`
- `component_inductance_THT`
- `component_lamp-E10_THT`
- `component_LED_THT`
- `component_LED_THT_replacable_SMT`
- `component_mosfet_n-channel_TO-92`
- `component_NPN-BJT_TO-92`
- `component_resistor_SMT`
- `component_resistor_THT_3W`
- `component_switch-micro-Normally-Closed_THT`
- `component_switch-micro-Normally-Open_THT`
- `component_switch-On-OFF_THT`
- `component_switch-On1-OFF-On2_THT`
- `component_switch-On1-On2_THT`

## End nodes (9)

- `end-node-double_AC`
- `end-node-double_blank`
- `end-node-double_current`
- `end-node-double_plus-minus`
- `end-node-double_plus-minus_with-protection`
- `end-node-double_plus-minus_with-USB-PD`
- `end-node-single_blank`
- `end-node-single_minus`
- `end-node-single_plus`

## Wires (10)

- `wire-angle_blank`
- `wire-angle_node-voltage`
- `wire-bridge_blank`
- `wire-straight_blank`
- `wire-straight_node-voltage`
- `wire-T-crossing_blank`
- `wire-T-crossing_node-voltage`
- `wire-two-angles_blank`
- `wire-X-crossing_blank`
- `wire-X-crossing_node-voltage`
