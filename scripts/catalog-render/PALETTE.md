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

The renderer normalizes solder mask, silkscreen, and dielectric colors in an
ignored board copy, inserting missing color entries when needed. It explicitly
enables KiCad stackup colors. Source PCB files remain unchanged.

Keep the camera, lighting, canvas sizing, and branding settings in `style.json`.
Per-board framing and model-visibility adjustments are allowed; color variation
is not. Inspect both faces against the established references before publishing.
Any future palette change should be a deliberate catalog-wide migration.
