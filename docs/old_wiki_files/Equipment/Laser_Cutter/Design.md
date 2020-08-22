Basic Information
-----------------

The cutting area is:

-   600 x 400 mm (A2 Landscape) for the Orange Laser

<!-- -->

-   You can cut material up to around 6mm thick
-   Some people (everyone bar Bob) have been having problems with red
    and black. If you're trying to do something intricate such as
    engraving we recommend NOT using black ANYWHERE on your design to
    avoid bits being engraved unnecessarily and wasting your time/money
    or potentially wrecking your design.

Inkscape
--------

### Suggested Page Layout

-   I like to use a 200mm x 300mm page, set to millimetres, with a 1mm
    grid.
-   [Laser_Template.svg](http://wiki.hacman.org.uk/images/b/bc/Laser_Template.svg)
    Is a good template. Just put it in the templates directory in your
    inkscape folder to use it.

Templates Directory:

-   Linux: .config/inkscape/templates/
-   Windows: %APPDATA%\\Inkscape\\templates\\

Templates:

-   Orange Laser template:
    [Media:Laser_Template_Orange.svg](Media:Laser_Template_Orange.svg "wikilink")

### Different Cuts / Colours

Each different colour, line thickness, layer and group can be selected
to cut differently, and the cut order changed.
It can help to use solid background colours in your inkscape designs to
denote what should be cut and when

### Designing the cut

First make an object to cut using Inkscape

Notes

-   When creating an image to cut it needs to be all lines or all fill
-   Make sure any lines are not dotted lines and are single fill lines
-   You should not use a mixture of both, or the laser cutter may throw
    a hissy fit
-   The thing you're engraving should be surrounded by a box or shape to
    cut it out as the final step
-   The cut lines and engraving lines should be different colours (each
    type of laser strength should have a different colour)

Solidworks
----------

If you're importing a design from Solidworks the best way to do it is to
export the model to a DXF file first

-   Open up the 3D model within Solidworks
-   Select File -&gt; Save As
-   Select DXF in the drop-down filetype list and click Save

<!-- -->

-   At this point some options will be visible on the left-hand side
    which you need to set before the actual save is done
-   In the Views to Export, untick Current, and tick Top
-   The other options such as Alignment can be left as defaults

<!-- -->

-   Next make sure the view is a direct top down view, with the X / Y /
    Z cross at the bottom left, click it to make sure the view is
    aligned
-   Click the tick button
-   A preview will be visible of the outputted diagram before it is
    saved

<!-- -->

-   Import the DWF file into Inkscape
-   When prompted make sure to untick the option to scale the image to
    A4, to make sure the measurements are accurate

Visicut
-------

### Importing the Design into Visicut

Next you need to import the design from Inkscape to Visicut

-   Within Inkscape select **Extensions -&gt; Lasercut Path -&gt; Add to
    Visicut**
-   place the design towards the bottom left-hand corner as it's more
    accurate there and this is where the zero point is
-   Try not to go within the last 5mm of the edges. The small edge stop
    within the cutter will align the part as such

If the Visicut extension doesn't work for any reason, save the design as
an SVG, and reload directly into Visicut. Note: any text needs to be
converted into paths first

### Types of Cut

There are several types of laser strength / profile
Marking is a very light form of engraving

| Type of Cut      | Description                                        |
|------------------|----------------------------------------------------|
| Ignore           | Ignore the layer in the diagram                    |
| Mark Shallow     | Mark Shallow                                       |
| Mark Deep        | Mark Deep                                          |
| Engrave Dithered | Engrave Dithered - darker colour equals deeper cut |
| Engrave Solid    | Engrave Solid                                      |
| Cut              | Cut all the way through the material               |

### Setting the layer profiles

Next you need to map each layer in the design to a cut profile (Laser
speed / strength)

-   Select the material (e.g. Acrylic)
-   Select the material thickness (e.g. 3mm)
-   Under the Mapping tab, select **Map by Fill Colour**
-   Use the shift key in Visicut to view overlaps

Next re-arrange the layers and select the type of cut

-   Place layers with engraving at the top of the list
-   Place layers for cutting holes in the middle of the list
-   Place the final cut stage as the last in the list
-   make sure all layers needed are ticked

It's best to cut the outer line/edge last, because the piece is more
likely to move after doing so, making any subsequent cuts inaccurate. So
make sure to do this stage last.

### Laser Settings

Next you need to make sure the settings under the laser settings tab are
sane / correct

For Acrylic:

<table>
<thead>
<tr class="header">
<th><p>Profile</p></th>
<th><p>Power</p></th>
<th><p>Speed</p></th>
<th><p>Other</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Mark Shallow</p></td>
<td><p>10</p></td>
<td><p>80</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Mark Deep</p></td>
<td><p>100</p></td>
<td><p>70</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Engrave Dithered</p></td>
<td><p>20</p></td>
<td><p>100</p></td>
<td><p>Engrave Bottom up: <strong>unticked</strong><br />
Engrave Unidirectional: <strong>unticked</strong></p></td>
</tr>
<tr class="even">
<td><p>Engrave Solid</p></td>
<td><p>20</p></td>
<td><p>100</p></td>
<td><p>Engrave Bottom up: <strong>ticked</strong><br />
Engrave Unidirectional: <strong>unticked</strong></p></td>
</tr>
<tr class="odd">
<td><p>Cut</p></td>
<td><p>100</p></td>
<td><p>6</p></td>
<td></td>
</tr>
</tbody>
</table>

[Category:Laser Cutter (Blue)](Category:Laser_Cutter_(Blue) "wikilink")