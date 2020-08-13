|                                                               |
|:-------------------------------------------------------------:|
|           ![](laser_orange.jpg "laser_orange.jpg")            |
| <categorytree mode=pages>Laser Cutter (Orange)</categorytree> |

The Orange Laser Cutter is usable by members from the week beginning
28th of September 2015. You must have had an induction on the Orange
Laser, or a Conversion Class to use it.

Top-level specifications:

-   A2-ish Bed size, 600mm x 400mm
-   60W Laser Tube (1250mm long / 55mm diameter)
-   Awesome Extraction
-   Air Assist
-   Red-dot laser for bounds checking
-   Smart cooling
-   Rise-and-fall bed, Super useful for engraving stuff on stuff
-   \[TBC\] Rotary Axis

| Informational                                                                                                                                                                                                                                                                                                                                                              |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| If the laser cutter does **anything** out of the ordinary please make sure it's reported to a laser maintainer. If the response is "please put the out of order sign on the cutter" then do that. **DO NOT ATTEMPT TO FIX THE CUTTER YOURSELF.** If it is clearly not functioning, put the out of order sign on it and then report it. We will fix it as soon as possible. |

Status
------

{{\#lst:Orange_Laser_Worklog\|status}}

Software
--------

### Visicut

Visicut is the software that converts vector files into the code that
drives the laser cutter. You can download Visicut
[Here](http://download.visicut.org/develop).

If you are on OSX, you may need to download the Platform Independant ZIP
instead of the OSX Release. If you are a software developer with
experience of OSX packaging, [Visicut are looking for help with this
issue](https://github.com/t-oster/VisiCut/issues/171)!

On first run, Visicut will ask if you want to download settings. You do,
just select **Manchester, UK: Hackspace** from the list and Visicut will
automatically install the latest settings for our laser cutter. You can
use this same method to reset your settings back to the default, under
the menu item **Options &gt; Settings &gt; Download Recommended
Settings**. You may get an error message, *error importing settings*. If
this occurs, just close and reopen Visicut for the settings to apply.

### Inkscape

For vector editing and manipulation, we suggest people use Inkscape. It
is a free and powerful vector editing package, and integrates well with
Visicut. It can be downloaded [here](https://inkscape.org/en/download/).

Once you have Visicut and Inkscape installed, and have run Inkscape at
least once (so it creates its folders in your home drive), You can
install the Inkscape addon for Visicut by clicking **Extras &gt; Install
Inkscape Extension** in Visicut. Close and reopen Inkscape and you
should have new options for sending vectors directly to Visicut.

Cutting
=======

Before lasering / cutting the main thing to be aware of is overheating

-   The laser cutter has a inbuilt water pump / cooler which needs to be
    running
-   There's also an extraction pipe for getting rid of the fumes

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
<strong>Otherwise you may cause damage to the Laser Cutter</strong> <strong>This can be verified by checking the red light is on in the water cooling chamber</strong></p></td>
</tr>
<tr class="even">
<td><p><strong>After Cutting make sure to leave the plugged in and turned on for at least 5 mins to allow the water pump to cool.</strong><br />
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
<td><p>Make sure to watch over the cutter as it's cutting.<br />
Rule 0 - don't be on fire</p></td>
</tr>
</tbody>
</table>

Failure
-------

### In the event something goes wrong

-   Mail the mailing list with a short description of the problem
    -   What you were trying to do
    -   What you expected to happen
    -   What happened instead
-   Put the out of order sign on the top of the cutter
-   Let the cutter cool down for 5 mins before turning off

### In the event of fire / emergency

-   There is an emergency stop button on the top panel that is
    functional. Opening the lid will stop the laser from firing however.
-   If you can smother the fire in-place using a piece of stock, do so.
-   If you cant smother it in place, put it on the floor and try to
    stomp it out.
-   If you cant do either of these. Leave the space immediately, and
    call 999. The address is Wellington House, Pollard Street,
    Manchester, M40 7FS

### Control Panel

-   The orange button / joystick in the center is used by nudging left
    and right for selecting menu entries
-   The red button is a 'back' button in menus.

Making the Cut
--------------

### Initial Startup

-   First place some money in the pot for using the cutter
-   There is a book for keeping track of usage of the laser so make sure
    to use this to track any IOUs. Time log is in the front of the book,
    Money log is in the back
-   Turn on the chiller, this can be found to the left of the laser
    cutter on the floor

### Positioning the part

With the orange laser the only thing to worry about is the Z axis. There
is a switch on the right hand side of the machine that can be used to
lower or raise the main bed of the machine. It's a bit slow, but make
sure not to crash the bed into the laser head, since there isn't a limit
switch installed

There is a small wooden guide inside the machine that can be used to
position / zero the height against the bed (the default position). This
goes in between the bed and the left-hand part of the laser cutter, as
in the following photo:

`  `[`File:Photo562824656796624810.jpg|Laser`](File:Photo562824656796624810.jpg%7CLaser)` Focus Guide`

-   For cutting materials up to 6mm it's best to have the z height set
    to bed level.
-   For cutting materials over 6mm, try to keep the z height 6mm into
    the material. Multiple passes may be needed.
-   For engraving set the focal point to the height of the material by
    placing the guide on top of it.
-   If you want crisp engraving on thick stock, you will need to do a
    2-stage engrave / cut with the focal point initially set to the top
    of your material, and then re-set to the correct height for your
    cut.

<!-- -->

-   Place the part into the cutter
-   When cutting try to leave the cover on both sides of the material,
    or if only one side the bottom (not the top)

### Test the Laser positioning

Next we're going to do a boundary test to make sure the laser cutter is
working on the area we think it's going to

-   Click Execute in Visicut
-   Wait for the small LCD on the Cutter it to say the file name
-   Nudge the center orange button to the right to select boundary
-   Press the center orange button, this will cause the red laser to
    trace the box outline of where the cut will be done on the material
-   This can be done with the lid open to assist in placing your part,
    however watch for pinch hazards.
-   Also an indication of the size of the boundary area will be shown on
    the LCD
-   Press the orange button again to go back to the main menu

### Do the cut

At this stage you should now be ready to do the cut for real

-   Make sure the lid is closed, The laser wont fire with it open.
-   The LCD should show Run on the screen
-   Press the orange button to start the run job

### Shutdown

-   After making any kind of cut, make sure to run the chiller for at
    least **5 mins**, and ensure the temperature displayed is **below**
    25, otherwise bad things may happen

[Category:Guides](Category:Guides "wikilink") [Category:Laser Cutter
(Orange)](Category:Laser_Cutter_(Orange) "wikilink")