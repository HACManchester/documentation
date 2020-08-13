Overview
--------

When lasering / cutting the main thing to be aware of is overheating

-   The laser cutter has a inbuilt water pump / cooler which needs to be
    running
-   There's also an extractor pump on the window sill for getting rid of
    the fumes

Warnings
--------

<table>
<thead>
<tr class="header">
<th><p>WARNING</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>The water pump must be running before cutting</strong><br />
<strong>Otherwise you may cause damage to the Laser Cutter</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>After Cutting make sure to leave the cutter on for at least 5 mins to allow the water pump to cool.</strong><br />
<strong>Otherwise you may cause damage to the Laser Cutter</strong></p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><p>Informational</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>It is preferred to watch over the cutter as it's cutting.<br />
Rule 0 - don't be on fire</p></td>
</tr>
</tbody>
</table>

Failure
-------

### In the event something goes wrong

-   Mail the mailing list / Bob with the problem
-   Put the out of order sign on the top of the cutter
-   Let the cutter cool down for 5 mins before turning off
-   Put a paper bag over your head and hope the problem goes away

### In the event of fire / emergency

-   **Keep the lid closed to make sure more air doesn't get in**
-   TODO currently no way to stop the cutting without turning off the
    power (which would stop the cooling), Bob is going to add a cancel
    button later. If something does happen it's probably best just to
    turn the power off then on again to keep the cooling going.
-   **Turning the machine off completely may be one option in an
    emergency but it may damage the laser head if it doesn't have time
    to cool down**
-   Shout **Oh Shit / Help**

### Control Panel

-   The red button will be used for cancel but is currently not working
-   The orange button in the center is used by nudging left and right
    for selecing menu entries

TODO

-   what do the other buttons do?
-   Attach an image of the LCD / Button Layout

Making the Cut
--------------

### Initial Startup

-   First place some money in the pot for using the cutter
-   There is a book for keeping track of useage of the laser so make
    sure to use this to track any iou's
-   Place the extractor pipe outside the window
-   Once the laser is in place of the blue on it'll be switched on all
    the time, but until that's the case it may need to be plugged in,
    there's a red switch on the back for the power
-   Check for a red light on the bottom left hand corner where the water
    cooling is, if there is no light this may be an indication that the
    water cooling is not working in which case email Bob

### Positioning the part

With the orange laser the only thing to worry about is the Z axis. There
is a switch on the right hand side of the machine that can be used to
lower or raise the main bed of the machine. It's a bit slow for now, but
make sure not to crash the bed into the laser head, since currently
there isn't a limit switch installed

There is also a small wooden guide inside the machine that can be used
to position / zero the height against the bed (the default position)

-   Place the part into the cutter
-   When cutting try to leave the cover on both sides of the material,
    or if only one side the bottom (not the top)

<!-- -->

-   For cutting it's best to have the z height set to bed level
-   For engraving set the z height to the height of the material by
    placing the guide on top of it

### Test the Laser positioning

Next we're going to do a boundary test to make sure the laser cutter is
working on the area we think it's going to

-   Click Execute in Visicut
-   Wait for the small LCD on the Cutter it to say the file name
-   Nudge the center orange button to the right to select boundary
-   Press the center orange button, this will cause the laser to trace
    the box outline of where the cut will be done on the material
-   Also an indication of the size of the boundary area will be shown on
    the LCD
-   Press the orange button again to go back to the main menu

### Do the cut

At this stage you should now be ready to do the cut for real

-   Make sure the lid is closed, there should be a cut off switch to
    make sure the laser doesn't operate but don't risk it
-   The LCD should show Run on the screen
-   Press the orange button to start the run job

### Shutdown

-   Make sure to bring the pipe back in from outside of the window
-   After making any kind of cut, make sure to run the cutter for at
    least **5mins** to allow the water pump to cool down the cutter,
    otherwise bad things may happen
-   There is a red switch on the back for turning off the laser, but
    once in place it should be on most of the time anyway

Note:

-   Currently there's no cancel button, the only reset is on the mbed
    board under the right panel, but that's off limits because of the
    high voltage

[Category:Laser Cutter
(Orange)](Category:Laser_Cutter_(Orange) "wikilink")
[Category:Guides](Category:Guides "wikilink")