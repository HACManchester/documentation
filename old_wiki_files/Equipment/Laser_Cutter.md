__NOTOC__

|                                                               |
|:-------------------------------------------------------------:|
|           ![](laser_orange.jpg "laser_orange.jpg")            |
| <categorytree mode=pages>Laser Cutter (Orange)</categorytree> |

Preface
-------

The Hackspace laser cutter is only to be used by those who have received
an induction, however there's lots you need to do before you get
anywhere near the actual hardware.

[Book an induction](Laser_Cutter/OrangeLaser/Inductions "wikilink")
(members only - sorry).

| Informational                                                                                                                                                                                                                                                                                                                                                              |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| If the laser cutter does **anything** out of the ordinary please make sure it's reported to a laser maintainer. If the response is "please put the out of order sign on the cutter" then do that. **DO NOT ATTEMPT TO FIX THE CUTTER YOURSELF.** If it is clearly not functioning, put the out of order sign on it and then report it. We will fix it as soon as possible. |

Basic Information
-----------------

-   The cutting area is 600 x 400 mm (A2)
-   You can cut material up to around 6mm thick
-   **Make sure the pump and cooler are running before using the
    laser!** If you can't hear or feel the vibration of the pump, don't
    use the cutter.
-   Some people (everyone bar Bob) have been having problems with red
    and black. If you're trying to do something intricate such as
    engraving we recommend NOT using black ANYWHERE on your design to
    avoid bits being engraved unnecessarily and wasting your time/money
    or potentially wrecking your design.

Getting started
---------------

In order to create your first design, you should install one of the
following:

-   [Inkscape](Laser_Cutter#Inkscape "wikilink") **recommended**
-   Adobe Illustrator
-   [OpenSCAD](OpenSCAD#2D "wikilink")

Whatever you're using, it's recommended to install Inkscape as that can
be used to tweak designs prior to importing them for cutting or etching.

Inkscape
--------

### Suggested Page Layout

I like to use a 600mm x 400mm page, set to millimeters, with a 1mm grid.
[Media:Laser_Template.svg](Media:Laser_Template.svg "wikilink") Is a
good template. Just put it in the templates directory in your inkscape
folder to use it. (Linux: .config/inkscape/templates/)

### Different Cuts / Colours

Each different colour, line thickness, layer and group can be selected
to cut differently, and the cut order changed. I normally use solid
background colours in my inkscape designs to denote what should be cut
and when.

Visicut
-------

Visicut is used to convert files into the format needed to drive the
laser cutter.

Install visicut from <http://hci.rwth-aachen.de/visicut-download>

(If you are using a mac the cross-platform Java implementation works
best.)

### Getting the settings

Install git from <http://git-scm.com/>

#### Linux / Mac

To get the settings in a terminal type:

`cd ~`
`rm -rf .visicut`
`git clone `[`https://github.com/HACManchester/visicut-settings.git`](https://github.com/HACManchester/visicut-settings.git)` .visicut`

To get updated settings, either repeat the above, or type:

`cd ~/.visicut/`
`git stash`
`git pull origin master`
`git stash apply`

### Usage

Now start visicut. You should have two dropdowns in the top right hand
corner, one to choose the material, and one to choose the thickness. If
you are using inkscape or illustrator, in the Tools menu there are
options to install the plugin for either. install them, then restart the
application to get the laser cutting menu options.

Status
------

### Orange Laser Cutter

{{\#lst:Laser_Cutter/OrangeLaser/Worklog\|status}}

The date above is the last occasion that we changed the laser status. If
it says it's working, even if the date is months ago, it's still working
and has been since the date listed.