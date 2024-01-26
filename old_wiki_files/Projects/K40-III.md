<onlyinclude>**Current Status** - *Workingish*</onlyinclude>

'''NOTE: This page is about the K40-III rebuilding project. For
information on using the Laser Cutter, please see [Laser
Cutter](Laser_Cutter "wikilink")

The laser cutter is a K40-III from china. This model is also known as
the blue horror, mainly due to the electronics and software used to
drive it. It contains a 40W laser tube, which is powered at 20ma, at
25000V, and has an A4 bed size.

Project Aim
-----------

-   *Rebuild a cheap chinese laser cutter to add functionality only
    found in more expensive machines.*

Project Members
---------------

-   [parag0n](user:parag0n "wikilink")

Project Status
--------------

-   Replace bed with honeycomb bed, increasing bed size from 200 x 150
    to A4 - COMPLETE
-   Replace electronics with LAOS board - COMPLETE
-   Configure for printing from visicut - COMPLETE
-   Add webcam for visicut
-   Automate extraction
-   Automate & monitor cooling
-   Add aiming dot
-   Add air assist

The Laser Cutter was originally a DC-K40III, purchased from eBay. These
lasers are designed to cut up to A4-ish size, but are fairly simplistic.

Electronics
-----------

The mainboard that comes with the K40 is fairly crap. Its designed to
use a piece of software called moshidraw, which is infuriatingly crap. I
ripped mine out, and bought a LAOS board.

The LAOS (LAser OpenSource) is a full control board for laser cutters.
It is based on the MBed, connects to the network, and provides a fully
open stack for laser cutting.

This allows us to install the control software on anyone's PC / laptop,
So they can configure the cutting from home, then click 'execute' when
they get to the space.

When I did my conversion, I had to make an adaptor from the ribbon cable
used to connect the X axis motor and endstops to the JST connectors on
the mainboard. Since v0.4, LAOS has this connector onboard, so the
ribbon cable can just be plugged straight in.

(photo)

To connect the laser itself, only two lines are needed, one to the
'laser fire' header, and the other to replace the potentiometer for
power level. The way LAOS recommend to do the PWM is fucking dangerous
for the K40, as they install a pullup on the 5V line, meaning if the
cutter is powered and the LAOS board isnt, the laser is on. I instead
attached a pull down to ground, and flipped the laser PWM in the config
file.

(photo)

I left the original 'laser enable' button on the cutter active, as its
handy to be able to disable the laser.

Bed
---

As the laser is sold as an engraver, the bed as it arrives is a clamp,
designed to hold a part in the middle of the bed. This is pretty crap
for our use, so I replaced the bed with honeycomb. The stuff I used is
[3mm x
10mm](http://www.easycomposites.co.uk/Category/Core-Materials/Aluminium-Honeycomb.aspx)
aluminium, used for carbon fibre composites. I will probably change it
to 6mm x 15mm on the next bed replacement, as it is cheaper, and the
thickness should help with warping.

To do the actual replacement, I built the bed out of aluminium U
channel, bolted together with L fixing plates in the corner. The
honeycomb fits within this. I made some brass standoffs that fit in the
existing mounting holes for the old bed, and mounted more U channel
going cross-ways with springs to adjust the bed height.

(photo)

I also removed the exhaust port that sits above the bed, and chopped the
front 2cm off it. By default the laser is able to cut the front bit of
the exhaust port, not exactly what we want!

This increases the size of the bed to a nice flat 300mm x 200mm

Water Cooling
-------------

I bought some 25L Containers of [RO
water](http://www.warehouse-aquatics.co.uk/25l-fresh-ro-water-in-re-usable-container.html)
for the cooling loop. Originally I bought a submersible caravan pump,
but this died fairly quickly as it wasnt rated for continuous operation.
I replaced it with a [fairly oversized
pump](http://store.waterpumpsupply.com/fldepu21260p.html) which works
well, though it is LOUD.

As the pump runs off 12V, I installed a secondary 12V 5A power supply in
the electronics bay. This is powered on with the rest of the laser, and
directly powers the lighting and the pump

Extraction
----------

The extraction fan that comes with the laser is super shoddy, has a US
plug, and a power lead so thin, you'll be amazed any electrons can
actually fit down there. I replaced it with [an inline
model](http://cgi.ebay.co.uk/ws/eBayISAPI.dll?ViewItem&item=130620453534&ssPageName=ADME:L:OC:GB:3160),
and gutted the original fan unit to use it as an adaptor from the hole
on the back of the cutter to 100mm tubing.

Window + Lighting
-----------------

I replaced the original orange perspex window with a clear perspex one.
It is exactly as effective at blocking IR, but means people can see
better what is happening.

I also added LED strip to the inside of the lid. This is wired directly
to the 12v power supply, and helps the user see what is happening.

Safety
------

The Cutter doesn't have anything stopping the laser being on with the
lid open. Eek. Wire a microswitch inline with the laser enable button to
turn off the laser when the lid is open. (I still need to do this)

Air Assist
----------

This is a thing that definitely helps a lot. Cutting Ply and MDF without
it results in a lot of smoke and flames, since fitting the AA we've
barely had any.

I used a [HAILEA ACO-318 Air
Pump](http://www.amazon.co.uk/Hailea-Aco-318-Air-Pump-Ac60/dp/B004LIJWEC)
as the compressor for this. I bought a replacement head from
[LightObject](http://www.lightobject.com/1820mm-Laser-head-w-air-assisted-Ideal-for-K40-machine-P701.aspx).
Handily the screw threads for this matched perfectly with the existing
head, so I was able to just fit the lens holder and air assist nozzle
without replacing the whole head.

I bought some 7mm cable chain, ran my 6mm ID silicon tubing through it,
and screwed it onto one of the existing screws for the laser head. I
then ziptied the other end to the right hand side of the X axis. I also
removed the top middle screw that holds the window in place with an
angle grinder, as the chain was getting caught up on it.

[Category:Projects](Category:Projects "wikilink") [Category:Laser Cutter
(Blue)](Category:Laser_Cutter_(Blue) "wikilink")