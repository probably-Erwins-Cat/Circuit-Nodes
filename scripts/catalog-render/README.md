# Circuit Nodes catalog renderer

This folder contains the repeatable KiCad rendering recipe. `style.json` is the
human-editable design brief; `render.ps1` applies it; `kicad-viewer.json` holds
the KiCad raytracer settings. Review renders go to the ignored
`scripts/catalog-render/.work/batch-review/` directory.

From the repository root on Windows:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts/catalog-render/render.ps1
```

For one board while adjusting its appearance:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts/catalog-render/render.ps1 -Only breadboard_grid-2.54mm_1x1
```

To generate just one face, add `-Faces TOP` or `-Faces BOTTOM`.

The catalog maintainer agent checks immediate `puzzle-pieces` folders for one
PCB file and missing overview images. Its first step is a dry scan:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts/catalog-render/publish-missing.ps1 -DryRun
```

For a new folder, add a `style.json` example named exactly after the folder,
pointing to its sole PCB file and giving its physical board dimensions. Render
the missing face or faces into the ignored review directory, inspect the result, then
publish that folder's reviewed preview with:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts/catalog-render/publish-missing.ps1 -UsePreview -Only <folder-name>
```

The publisher never overwrites an existing `_TOP.png` or `_BOTTOM.png`. It
skips folders with multiple PCB files or ambiguous image names. A folder with
both faces already present requires no KiCad render, regardless of whether
its images were created manually. This is an on-demand agent workflow, not a
GitHub Actions trigger.

The visible outputs are two PNGs per configured board, named `_TOP.png` and
`_BOTTOM.png`. In `style.json`, `camera.sides` maps those catalog labels to
KiCad's camera sides; the printed diagram face is currently `_TOP.png`.
Temporary board copies,
transparent renders, and the isolated KiCad configuration live in `scripts/catalog-render/.work/`
and are ignored by Git. The renderer does not modify the PCB source files or
the current catalog images under `puzzle-pieces/`.

## Edit the appearance

All routine decisions are in `style.json`:

| Key | Effect |
| --- | --- |
| `camera.tilt_direction` | One of `left-bottom`, `left-top`, `right-bottom`, or `right-top`; names the two visible PCB edges. |
| `camera.vertical_tilt_degrees`, `horizontal_tilt_degrees` | Amount of 3D tilt. |
| `camera.edge_level_degrees` | Rolls the image until the long PCB edges are nearly horizontal. |
| `camera.zoom` | Fills more or less of the canvas. |
| `image.pixels_per_short_side` | Pixel size of the short image edge. Both square boards use the same square canvas. |
| `image.background_hex` | Background colour. |
| `board.solder_mask_hex_rgba` | Board mask colour and opacity; the last two hex digits set opacity. |
| `examples[].solder_mask_thickness_mm` | Optional render-only mask thickness for boards whose thick stackup mask obscures silkscreen. The MLCC board uses 0.01 mm. |
| `lighting` | Fixed lighting strengths and side light elevation. |
| `branding.enabled` | Shows or hides a small logo badge in the lower-left image corner. |
| `branding.logo_file`, `logo_width_px`, `corner_padding_px` | Logo source, size, and placement. Replace the file path when a simpler logo is available. |
| `examples` | Input board files and physical sizes. |

The current view is `left-bottom`, matching the original image direction.
The 80 x 40 mm slider has `board_rotation_degrees: 180` so its lettering is
upright. It also has `zoom_multiplier: 2.25` to counter KiCad's unusually wide
camera fit. Those fields can be set per board. The 40 x 40, 80 x 40, and
80 x 80 mm boards keep their aspect ratio; both square boards use the same
canvas and logo size. Wide boards use a proportionally wide canvas except when
a tall 3D component requires a per-board `canvas_width_px` and
`canvas_height_px`, as with the motor's propeller. The reverse
view uses the opposite edge roll because KiCad mirrors camera rotation across
PCB faces. Per-board `bottom_rotation_degrees` and `bottom_zoom_multiplier`
keep rear text upright and the board within the frame.

## Handoff for a future catalog agent

Read `style.json` as the rendering specification. Add each new board to its
`examples` array with the source `.kicad_pcb` path, dimensions in millimetres,
and a stable output name. Render it, inspect for missing 3D models, readable
silkscreen, correct orientation, sufficient margins, and size relative to the
same-aspect-ratio reference. Correct any per-board rotation or KiCad zoom in
the config.

The current checkout has PCB sources for 16 puzzle-piece folders. The other
37 folders, including the end-node and wire pieces, have images but no
`.kicad_pcb` source here. They cannot be regenerated until their PCB files
and any external 3D model libraries are available. Existing published images
are only replaced during an explicit migration, never by the missing-image
publisher. See `missing-pcb-sources.md` for the complete folder list.
