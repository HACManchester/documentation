<onlyinclude>**Current Status** - Became
[Madlab_Storage](Madlab_Storage "wikilink").</onlyinclude>

This project will enable a door to be unlocked from the outside using an
RFID tag with a unique number on it, and be able to identify that person
on a connected PC. The accepted tags will be stored on the Arduino (or
compatible hardware). The system will eventually have the ability to
edit the accepted cards from a connected PC, and have a log file that
can be accessed over the internet to monitor comings and goings of
users.

Project Aim
-----------

The aim of this project is to create a Door Control system that

-   is secure, simple and reliable
-   uses RFID cards and possibly an accompanying PIN code to open the
    door
-   will still work in the event of power failure, with a Battery
    backup.
    -   Fail closed door Strikes also an option, so that it will need a
        key to unlock instead.
-   will run on an Arduino or compatible hardware
-   will communicate with a PC to log who is in the space at what time.
-   will still run without a PC, except for administration.

Project Members
---------------

-   [TBSliver](user:TBSliver "wikilink")

Hardware
--------

The current idea for the hardware is to use

-   any Arduino or compatible hardware
-   an [ID12 RFID Reader
    Module](http://www.coolcomponents.co.uk/catalog/product_info.php?cPath=27_54&products_id=106)
-   several [RFID
    Tag's](http://www.coolcomponents.co.uk/catalog/product_info.php?cPath=27_54&products_id=165)
-   Several LED's or a screen to provide feedback for whats happening.
    -   Starting with LED's due to lack of screen, plus keeps it simple.

Schematic & Breadboard
----------------------

Using [Fritzing](http://fritzing.org), have quickly designed a schematic
and breadboard layout for this circuit. It is only basic, using LED's
instead of a screen or a lock mechanism.

This is the
[schematic](http://farm3.static.flickr.com/2706/4281116635_9505ebedd2_o.jpg).

This is the [breadboard
layout](http://farm3.static.flickr.com/2715/4281200081_1837661364_o.jpg).

Prototypes
----------

[Version 0-1](Door_Control/Version_0-1 "wikilink") Basic functionality
with a switch and a random number generator. (This version is more of a
proof of concept, and to teach me some of the required code to get this
project to work.)

[Version 0-2](Door_Control/Version_0-2 "wikilink") Full RFID only
functionality. This release allows the user to add tags to a DB, and
remove them as needed (although with certain limitations...), and will
unlock ONLY for those RFID tags in the Database.

[Version 0-3](Door_Control/Version_0-3 "wikilink") This version will
extend the functionality to include a Keypad for inputting a Pin. For
this, the DB functions will have to be re-written, aswell as several
other functions to allow a seperate Pin for each RFID tag. (This'l teach
me for defining things explicitly....) This release will (hopefully)
also address the limitations of Version 0-2, with a De-frag function for
the database, as well as a password for the menu system.

[Database](Door_Control/Database "wikilink") Testing the database
function outside of the main program. Also working on a better menu
system.

Future Upgrades
---------------

-   Add a screen for custom messages
-   Add bluetooth detector as secondary method for pin entry
-   Computer side interface for setting up different things
    -   Add specific pins for events, so that directions can be shown to
        which floor the event is on.

Related Projects
----------------

[Madlab Storage](Madlab_Storage "wikilink")

[Category:Projects](Category:Projects "wikilink")