Schematic
---------

<figure>
<img src="Madlab-Storage-Schematic-v02.png" title="Madlab-Storage-Schematic-v02.png" width="500" alt="Madlab-Storage-Schematic-v02.png" /><figcaption aria-hidden="true">Madlab-Storage-Schematic-v02.png</figcaption>
</figure>

The schematic has now been edited to a modular fashion to make it easier
to read, and to edit seperate parts without messing with routing wires.
Also, removed the SPI interface. NB - Pins have been re-arranged, and
will need to be changed in the program to reflect this.

PCB
---

![<File:Madlab-Storage-Board-v02.png>](Madlab-Storage-Board-v02.png "File:Madlab-Storage-Board-v02.png")

The PCB now uses vary few top layer items - infact it only uses 5
tracks, which can easily be replaced with wire jumpers. The layout has
also been re-arranged, moving the power supply up to the top right,
underneath the screen. This gives a cleaner front layout, and keeps the
bottom half free of large components apart from controls. Also, with the
removal of the SPI interface, the routing has been made much easier.

The track width has also been changed - using 0.05 (50mil?) track width
for power and ground, and 0.032 (32mil?) for signal wires.

Also, using a ground plane, partially to learn how to use it, but also
for the numerous benefits including improved noise resistance.

[Category:Madlab projects](Category:Madlab_projects "wikilink")