Overview
--------

In order to create your first design, you should install one of the
following:

-   [Inkscape](https://inkscape.org/en/) (recommended)
-   Adobe Illustrator
-   [OpenSCAD](http://wiki.hacman.org.uk/OpenSCAD#2D)

For cutting you'll also need
[Visicut](http://hci.rwth-aachen.de/visicut-download)
Whatever you're using, it's recommended to install Inkscape as that can
be used to tweak designs prior to importing them for cutting or etching.

Inkscape
--------

Inkscape is basically an open source vector drawing package that's also
good for laying out your designs for the laser cutter

### Visicut Extension

To setup the Inkscape extension for Visicut within Windows

-   Open Visicut
-   Select Extras / Install Inkscape Extension
-   For Windows 7 this should install into the directory
    **C:\\Users\\\[username\]\\AppData\\Roaming\\inkscape**
-   The Extension will be visible within Inkscape under **Extensions
    Menu -&gt; Lasercut Path -&gt; Open in Visicut**

There's also a link here
<http://hci.rwth-aachen.de/visicut_inkscape_plugin>

There's also a patch here if you have problems getting it to work under
Windows:
<https://github.com/grbd/VisiCut/commit/5f7cc687527e16a7806d0470fd9e2ecc9b9c4c2f>

### Tabbed Box Extension

For making boxes with the laser cutter, there's a **tabbed box maker**
extension for Inkscape

-   <http://twot.eu/111000/111000.html>

Visicut
-------

After you've put together your design for cutting, Visicut is used to
convert files into the format needed to drive the laser cutter.

-   Install Visicut from <http://hci.rwth-aachen.de/visicut-download>
-   (If you are using a Mac the cross-platform Java implementation works
    best.)

### HacMan - Visicut Settings

The current way to get the latest settings for Visicut is to

-   Open Visicut
-   Select Options -&gt; Settings -&gt; Download recommended settings
    -&gt; United Kingdom, Manchester: Hackspace
-   You may get an error about downloading the settings, ignore this
-   Restart Visicut
-   There should now be two laser cutter settings for the blue and
    orange laser cutters on the right hand side

For reference the original link to the Visicut settings was
<https://github.com/hacmanchester/visicut-settings> But this is no
longer in use.

As time goes on the settings for the orange laser may be updated / added
to for different types of materials so you may want to try re-downloaded
the settings every now and again just to refresh them with new presets
for different materials

### Windows Setup

To clone the settings on a Windows machine

-   First install [Git](http://git-scm.com/download/win)
-   create a directory for git files (e.g. C:\\GITHUB)
-   Clone to a local directory

`cd C:\GIHUB\`
`git clone `[`https://github.com/HACManchester/visicut-settings.git`](https://github.com/HACManchester/visicut-settings.git)

Another way is just to click the [Download
Zip](https://github.com/HACManchester/visicut-settings/archive/master.zip)
button on github and extract the files

To install the files for Windows:

-   Startup Visicut for the first time, this should create a directory
    with some default files in under C:\\Users\\\[username\]\\.visicut\\
-   Close Visicut
-   Copy and paste the files downloaded from git over the top of the
    default Visicut settings files
-   C:\\GITHUB\\visicut-settings -&gt; C:\\Users\\username\\.visicut\\
-   Startup Visicut

### Linux Setup

To get the settings in a terminal type:

`cd ~`
`rm -rf .visicut`
`git clone `[`https://github.com/HACManchester/visicut-settings.git`](https://github.com/HACManchester/visicut-settings.git)` .visicut`

To get updated settings, either repeat the above, or type:

`cd ~/.visicut/`
`git stash`
`git pull origin master`
`git stash apply`

[Category:Laser_Cutter_(Orange)](Category:Laser_Cutter_(Orange) "wikilink")