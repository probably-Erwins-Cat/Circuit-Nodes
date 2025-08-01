# Printable Base

The printable base comes either with closed bottom and optional magnet pocket for blackboard use or open bottom for easier repairablility. 

## Tolerance
The numbering at the end of the file name, e.g. "0.2", describes the tolerance in millimeter for the hexagona docking. The larger, the looser the fit. **Users should aim for the tighter fit without causing part friction**. Tighter tolerances help the magnetic connectors to auto-align the pirntable bases the best. On current-generation hobbyist printers, a **tolerance of 0.2mm is a good starting point** typically resulting in good alignment without reasonable friction.

## Print Settings for Slicer

The printable base uses a minimum of material for implementing all features. The part and especially wall thickness is optimized for printability, i.e. number of retractions and travel moves without extrusion is minimized, corners are rounded helping to avoid large printhead accelerations, and even wall thickness (~4 extrusion lines wide) all around. All z-dimensions are a multiple of 0.2mm. The recommended print settings are

* 0.2mm layer height (all z-dimensions are a multiple of 0.2mm)
* 2 perimeters (wall thickness is approx. 4x the extrusion width = 2x2 perimeters)
* 5 top and bottom layers
* 80-100% infill, rectilinear/grid pattern (least amount of travel moves, prints fastest)