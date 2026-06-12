This is the information and schematics doc for the CNC Auxiliary Control Panel located on the right side of the enclosure above the emergency stop. 

ELECTRICAL WARNING: The inside of this panel is 240VAC. This is dangerous voltage and should be unlocked only by competent persons. The cabinet is locked and should be kept locked.

WARNING: This panel is critical infrastructure. Maintainers should consult the team leader before opening it. They should also  heed the electrical warning above.

The auxiliary control Panel is isolated from the CNC itself and is served by a different circuit. Despite the LED's on the panel, the 12VDC PSU inside is not connected to any battery, and no battery is present within the enclosure. Beware when opening the enclosure that wiring is tight, and to not yoink it open. 

The incoming AC (1.5mm2) comes into the rocker switch and the other side of the rocker switch terminates on the wagos. The 3d printed wago mounts are coloured red, blue, and green for live, neutral, and earth. The earth also has a termination point on the cabinet screw. The wagos power the switches and the internal 12VDC PSU

The switches are all 4 pole, meaning they each have an incoming and outgoing live and neutral. They are rated for up to 70VDC as well as AC, but be careful when putting >24VDC/a lot of current over them. The switch off (bottom) positions have the incoming connections for the appliances, whilst the switch on (top) positions have power provided from the WAGO's.

Outside the panel, the LEDS are served by a C13/C14 (kettle lead male and female) pairing for a quick disconnect, and the extractor is served by a C19/C20 pairing (an industrial high capacity version of the above). Any maintainer can safely disconnect these for maintenance , and if you find them disconnected, please just reconnect. The ventilation fan (mounted on the wall to outside) is directly wired to the panel, so there is no disconnect.

The Thermometer has a direct run to the coolant line for the spindle. There is plenty of extra room in the cable (next to the main cnc enclosure)

The switch layout is as follows from left to right: (as you view the closed panel) All switches are AC except for 4.

1.  Ventilation Fan 
2. Main LED Light for CNC Enclosure
3. Extractor/Vacuum
4. The thermometer (This is running at 12VDC, not AC)
5. Dummy - Not connected yet
