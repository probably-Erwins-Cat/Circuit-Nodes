# Catalog palette

`style.json` is the authoritative, machine-readable palette for all catalog
renders. The existing MLCC capacitor and breadboard previews provide visual
references for the shared appearance. No previous chat is needed.

| Element | Style key | Color |
| --- | --- | --- |
| Solder mask, both faces | `board.solder_mask_hex_rgba` | `#000000B3` — black, approximately 70% opacity |
| PCB substrate, all dielectric layers | `board.substrate_hex_rgba` | `#454950FF` — opaque dark gray |
| Silkscreen, both faces | `board.silkscreen_hex_rgba` | `#FFFFFFFF` — opaque white |
| Image background | `image.background_hex` | `#506B5A` — muted green |
| Logo badge | `branding.badge_color_hex` | `#182D26` — dark green |

These are material/input colors, not sampled final pixel colors: lighting,
copper under the translucent mask, and shadows affect the visible result.
Components retain their model colors, including metal contacts and capacitor
bodies. Do not recolor the PCB to match a source file's manufacturing color.

The `Circuit Nodes catalog` layer preset in `kicad-viewer.json` explicitly
enables copper on both faces, mask, silkscreen, board body, and component models.
The renderer selects this preset instead of KiCad's default
`follow_plot_settings`, which can hide copper according to a board's fabrication
plot selection. Copper must remain subtly visible through the black mask where
present. Compare both faces with the published ruggedized capacitor and MLCC
references before publishing; reject a flat, copper-free appearance when the
source has copper pours or tracks. Do not change source plot selections to fix
a preview.

The preset must also contain explicit material colors. KiCad substitutes black
for missing preset color entries; an empty `colors` list is not a safe way to
inherit defaults. `kicad-viewer.json` defines gray solder paste (128/128/128),
silver plated material (194/194/194), and gold bare copper (191/156/59).
Inspect exposed solder areas as well as copper visibility before publishing.
The renderer rejects missing or black metallic material entries.

The renderer normalizes solder mask, silkscreen, and dielectric colors in an
ignored board copy, inserting missing color entries when needed. It explicitly
enables KiCad stackup colors. Source PCB files remain unchanged.

Keep the camera, lighting, canvas sizing, and branding settings in `style.json`.
All source-board models must remain visible, including alternative assembly parts.
Explain either/or assembly in bold README text. Per-board framing adjustments are allowed; color variation
is not. Inspect both faces against the established references before publishing.
Any future palette change should be a deliberate catalog-wide migration.
