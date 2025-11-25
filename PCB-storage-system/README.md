# PCB Storage System

Circuit Nodes are much cheaper when ordered in bulk. Buying in bulk also means you always have replacement PCB if needed. Since there are many different Circuit Nodes, a storage and sorting bin is advisable.
Here, a parametric PCB storage system is provided. It features a storage compartment, where all unused PCBs can be stored and a window where the stored PCB is displayed. 
Further, it is stackable, for compact storing all PCBs and still having all Circuit Nodes at a glance.

<img src="storage-system-example.png" alt="Circuit Diagram" width="500">

## Parametric Sizing

The CAD file harbors a set of variables, VarSet, that parametrises the whole storage system. If the here exported printable files are too small, you can easily export larger ones.
Only the variables with "int_*" in the name are of relevance for scaling the storage system. Setting "int_width" sets the number of columns. Setting "int-length" sets the length of the storage container. Setting "int_multiplier" sets the width of the to-be-stored PCBs (either 1 or 2). 