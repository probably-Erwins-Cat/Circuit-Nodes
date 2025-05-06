### this is WIP

# Circuit Nodes - Modular Electronics Building Blocks

<img src="logo.png" alt="Circuit Diagram" width="1000">


Circuit Nodes is an open-source educational tool designed to help students and
enthusiasts understand electronic circuits by physically building them. Each
module consists of a small PCB mounted on a 3D-printed base with puzzle-like
notches, allowing users to create circuits in a grid-based structure. The PCBs
include simple circuit elements such as resistors, capacitors, wire traces,
switches, LEDs, lamps, and voltage or current measurement points, with their
schematic representations printed directly on them. Magnetic connectors enable
both physical attachment and electrical connection.

This system provides a low-cost entry point into electronics education while
remaining highly scalable. By starting with basic components and expanding into
more complex circuits, learners of all levels can benefit. The pedagogical value
lies in reinforcing the connection between abstract circuit diagrams and
tangible, working implementations, making theoretical concepts easier to grasp
through hands-on experimentation.

# Features

If you are an educator or represent a school interested in testing Circuit
Nodes, I can provide kits for evaluation and classroom use. Please reach out for
more details.

-   Pre-Assembled Kits Available: If the initial effort of manufacturing and
    assembling the components seems too high, I can provide ready-made circuit
    kits to make getting started easier.
-   Modular Design: 40x40mm PCBs mounted on 3D-printed bases with interlocking
    puzzle-like edges.
-   Hands-on Learning: Users assemble working circuits based on schematic
    diagrams.
-   Magnetic Connectors: Ensure secure physical and electrical connections.
-   Visual Representation: Each PCB features the corresponding circuit schematic
    for intuitive learning.
-   Expandable: Additional modules with more components can be designed and
    added.
-   Low Cost & Scalable: An affordable introduction to electronics that can be
    expanded as needed.

# Getting Started, Assembly Instructions

-   Refer to the repository contents below for a dedicated kits list and example
    circuits. Plan what puzzle pieces you need and how many. You can also
    contact me for production and sale, I stock the puzzle pieces in my
    inventory and do quality checks including all other parts for assembly.
-   Download the necessary Gerber files for the circuits or kits you want to
    build from this repository.
-   Manufacture the PCBs using your preferred PCB fabrication service. I
    recommend black background/solder mask and white silkscreen print. From my
    experience, this combination is the most durable combination.
-   *Decide which style of the 3D printable base you prefer*:
    -   *Screw type*, PCBs support screws of size M2, M2.3, and M2.6
        self-tapping, as well as M2, M2.5 and M3 normal screws plus heat
        inserts.
        -   Self-Tapping: I recommend M2 **self-tapping** and **countersunk**
            screws. They provide the cleanest look, do not require additional
            assembly steps, auto-align the PCBs and, in case you strip the
            plastic part by overtightening them, they leave back a hole that can
            be used for M2.3 sized screws (saves you time reprinting a part).
            Self-tapping screws, when not careful, can carve multiple threads
            when reinserting, limited number of reuse of printable base.
        -   Heat insert version: Heat inserts provide more durable and reliable
            way for threading and unthreading M2 and M2.5 screws (normal,
            non-self-tapping!), but requires melting in the heat inserts, which
            can be annoying to align and is time consuming.
    -   Base Bottom Style:
        -   The closed bottom base has best build plate adhesion, but prevents a
            look inside the part for the curious students, but also prevents any
            accidental touching.
        -   The skeletonized one allows to look inside, but prevents curious
            fingers to get inside to break parts but allows to explore how
            components look in real life.
        -   The open one uses the least amount of material, is the fastest to
            print and, in case of a damaged component, the bottom side can be
            reach for solder repair without disassembly.
        -   The magnetic bottom base allows for installing neodymium magnet, so
            that the part can be attached to a magnetic surface, like a
            blackboard or whiteboard. The internal height for components will be
            reduced by at least 3mm.
-   *Before you go mass printing the base parts*, check which tolerance class,
    0.15mm and 0.2mm, suits your printer capabilities. The puzzle pieces should
    fit in together without a lot of wiggle room and without a lot of friction.
    Smallest tolerance is preferred for best alignment of the parts.
-   Solder the components of the PCBs onto it. Do not solder the magnetic
    connectors yet for easier connector alignment, see below.
-   Assemble the puzzle pieces by placing the magnetic connectors in the pockets
    for the dedicated PCBs first. Slots without electrical connection stay
    empty.
-   Place the PCB on top of the pins of the magnetic connectors and screw in
    four screws of your chosen style into the base. Countersunk screws
    auto-center the PCB on the base.
-   Solder the magnetic connectors to the PCB.
-   Start building and experimenting with different circuit configurations!

# Repository Contents

-   Gerber Files: Ready-to-fabricate PCB designs for all modules.
-   3D Print Files: STL files for printing the interlocking bases.
-   Assembly Instructions: Guidelines for assembling the modules.
-   Example Circuits: Sample configurations to demonstrate different circuit
    principles, structured according to different classes, difficulty levels,
    and topics. These examples help guide learners through progressively complex
    circuits, making them suitable for both beginners and advanced users.

# Contributing

Contributions are welcome! Feel free to submit pull requests with new module
designs, improvements, or documentation updates. If you are a teacher and would
like to see specific schematics that align with your curriculum, but lack the
KiCad skills to design them, I am happy to assist with the schematic design
process. Just reach out with your requirements, and I can help bring them to
life for your students.

# Contact

For questions or collaboration, please open an issue or reach out via [your
preferred contact method].

# License

This project is licensed under the Creative Commons Attribution-ShareAlike (CC
BY-SA) Non-Commercial license. You are free to share and adapt the designs as
long as you provide attribution and distribute any modifications under the same
license. Commercial use is not permitted.

[![CC BY-NC-SA
4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

This work is licensed under a [Creative Commons
Attribution-NonCommercial-ShareAlike 4.0 International
License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

[![CC BY-NC-SA
4.0](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)
