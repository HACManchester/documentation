Cura Setup
----------

### Printer Setup

Add a New Printer:

-   Other
-   Custom
-   Machine Name: Mendel90
-   Machine Width: 200
-   Machine Depth: 200
-   Machine Height: 200
-   Nozzle Size: 0.4
-   Heated Bed: Yes
-   Bed Center is 0,0,0: Yes

### Printing Config (Cura)

**Please note! These settings are from 2015, you may have better luck
using the Slic3r settings instead.** Download the Mendel90 Cura settings
from:
[1](https://raw.githubusercontent.com/HACManchester/cura-settings/master/PLA%20-%200.25MM%20-%20Mendel90.ini)

-   File -&gt; Open Profile
-   Select the file you downloaded

### Printing Config (Slic3r)

Download the Mendel90 Slic3r settings from:
[2](https://raw.githubusercontent.com/HACManchester/slic3r-profile/master/Slic3r_config_bundle.ini)

-   File -&gt; Load Config Bundle
-   Select the file you downloaded

Maintenance
-----------

### New Print Bed Glass

As we print on a glass sheet if we need new glass sheet then the
following must be satisfied.

1.  Glass sheet must be 200 \* 200 size
2.  Idealy using Borosilicate Glass that is around 3mm thickness
3.  Must be bought in a batch and cut from the same sheet to ensure we
    have multiple surfaces that are exacvtly the same thickness
4.  3D printer will be out of action until calibrated for the new glass
    surfaces

Printing
--------

### How to print

1.  Place 3D object onto the Cura platform, rotate and scale it however
    you need. You can place multiple items on the bed if you need to
    print multiple things. **It's a good idea to leave a few millimetres
    gap around the edge of the platform, just in case.**
2.  Check the above settings and profile are loaded into Cura.
3.  If you're happy with the print time and amount of filament it'll
    use, export the toolpath to a location on your computer.
4.  Browse to either **<http://mendel90/>** or
    **<http://m90.hacman.org.uk/>** in your browser and log in to
    Octoprint using the details provided next to the printer itself.
5.  Load the .gcode toolpath file.
6.  Clear the printing bed of any other items.
7.  Click **print**!

**Make sure you watch your print for a good duration at the start so you
can stop any problems that happen, such as the filament not sticking to
the heated bed.**

*You can also watch your print using the control tab in Octoprint.*

### Stopping a print

1.  Hit the **stop** button in Octoprint.
2.  Under the control tab, hit the **home** buttons under both the X/Y
    and Z columns.
3.  Recover your print from the bed.

Risk Assessment
---------------

{{\#section:MendelMax\|RA}}

[Category:Mendel 90](Category:Mendel_90 "wikilink")
[Category:Team_3D_Print](Category:Team_3D_Print "wikilink")