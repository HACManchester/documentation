2D
--

### My First Design with OpenSCAD

Let's look at a simple example using OpenSCAD. A rectangular plate with
screw holes in the corners:

![<File:2d-design-with-openscad.png>‎](2d-design-with-openscad.png‎ "File:2d-design-with-openscad.png‎")

So how do we produce that?

#### Step 1. Install OpenSCAD.

Visit <http://www.openscad.org/downloads.html> and follow the
instructions to download and install.

#### Step 2. Designing.

Once OpenSCAD is installed and you've started it up, you'll be presented
with a set of blank panes. Let's whack the following into the left hand
pane:

    difference() {

        // Plate size overall
        square([75,100]);

        //  Screw holes
        translate([6,6,0]) { circle(2, $fn=50); }
        translate([6,94,0]) { circle(2, $fn=50); }
        translate([69,6,0]) { circle(2, $fn=50); }
        translate([69,94,0]) { circle(2, $fn=50); }
    }

What does all this mean?

##### Difference

<http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/CSG_Modelling#difference>

`   difference() {`

Subtract the intersections from each other.

##### Square

<http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#square>

`   square([75,100]);`

Draw a square that's X=75mm and Y=100mm.

##### Translate

<http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#translate>

`   translate([6,94,0]) { circle(2, $fn=50); }`

The object in the perenthesis will have it's origin at X,Y,Z. As we're
drawing in 2D we don't care about Z so this will always be zero for this
case. The origin for our circle is X=6mm and Y=94mm.

##### Circle

<http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#circle>

`   circle(2, $fn=50);`

The first parameter is the radius, not the diameter of the circle. The
second parameter provides a higher resolution when drawing small
circles.

#### Step 3. Tweak and update

Make changes to your design, and then hit F5 to refresh the rendered
view of your design.

#### Step 4. Save the damn design!

Once you've got a design you're happy with, save it to disk before
moving on.

#### Step 5. Compile, render and export.

Now it's time to compile that so that we can export the DXF. You can do
this by:

-   Hitting F6
-   Using the menu Design -&gt; Compile and Render (GCAL)

Now we can select Design -&gt; Export as DXF. Select a sensible file
name in a location you'll remember.

That's our OpenSCAD work done. At this point, we can make changes using
Inkscape or go directly to sending it to the cutter.

3D
--

### Nut Traps / Hexagons

`cylinder(r=5.5 / 2 / cos(180 / 6) + 0.05, $fn=6);` Makes a perfectly
snug M3 nut trap, loose enough that the nut can be placed by hand, but
then snug enough that I can bang the object on my table and the nut
stays in place. 5.5mm edge-to-edge is the size of a m3 nut.

[Category:Guides](Category:Guides "wikilink")
[Category:OpenSCAD](Category:OpenSCAD "wikilink")