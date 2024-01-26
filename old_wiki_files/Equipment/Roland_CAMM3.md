This is a project to get a Roland CAMM-3 milling machine working with a
Smoothieboard.

Status
------

The Roland CNC machine has a moving XYZ table, controlled by a
smoothieboard. The existing spindle housing has been refitted with new
bearings and an ER16 collet shank.

The following work needs to be done to make this work:

-   Reconnection of the motor control board in the front panel and
    optical speed sensor to the motor control board in the back panel
-   Construction of a new 400mm drive belt (see the pulley section
    below)
-   A 12V power supply needs to be added to supply the front panel. This
    doesn't need to supply any significant current; it's just to power
    the speed sensor, so a linear regulator will probably do the job.
-   The new ER16 shank is slightly shorter than the previous shank. This
    means the flats on the collet chuck are recessed into the spindle
    housing, making it difficult to tighten the collet. It may be
    necessary to make a specialised spanner to tighten and loosen the
    chuck.

Links
-----

-   ![<File:Roland_CAMM3-Service_Manual.pdf>](Roland_CAMM3-Service_Manual.pdf "fig:File:Roland_CAMM3-Service_Manual.pdf")
-   [CAMM-3 Yahoo
    Group](https://groups.yahoo.com/neo/groups/CAMM-3/info)
-   [PNC-3000 User Manual (too big to
    upload)](https://groups.yahoo.com/neo/groups/CAMM-3/files/User%20Manual/)
-   [Bob's git repository related to the smoothie
    board](https://github.com/thinkl33t/CAMM3-SMOOTHIE)

Spindle motor
-------------

![](Roland-speed-sensor.jpg "Roland-speed-sensor.jpg")

The motor is an AC motor which we have a drive system for. There are two
wires connecting the motor to the motor PCB. The motor PCB is the one
which has an IEC C14 mains socket (kettle lead socket).

The speed sensor feeds a series of pulses into J102 on the front panel.
Inside the front panel is a frequency to voltage converter, which
outputs a voltage between 0 and 12V, representing the speed of the
spindle. This voltage is called FV and feeds into the motor PCB on the
back of the machine.

![](Roland-speed-converter.png "Roland-speed-converter.png")

There is an EA6302A chip which does this conversion.

Bob identifies this as a BA6302A: [BA6302A
Datasheet](http://pdf.datasheetcatalog.com/datasheets/70/233658_DS.pdf).
FV feeds into the front panel as well to display the speed. The
datasheet mentions a 'mid-bias voltage' of 4.6V.

The FV voltage feeds an op-amp whose other side is set using the
potentiometer on the motor control board. The op-amp will then output a
'faster' or 'slower' digital signal. Because of this arrangement, it
won't be possible to control the speed of the motor unless we have a
speed sensor, unless we completely replace the motor driver circuit.

Connecting to the SmoothieBoard
-------------------------------

SmoothieBoard's spindle module contains support for [PID loopback
spindle control](http://smoothieware.org/spindle-control#toc6). This
takes a pulse chain from an encoder (which we have!) and uses it as the
input componante of a PID loop, generating a PWM output. Using a simple
resistor & capacitor, we can smooth this PWM into an analog signal
suitable for feeding into the spindle speed controller.



Axis stepper motors
-------------------

These are 6 wire, 2 phase, 1.5A motors. Rated 5.4V, driven at roughly
33V with a 0.9 degree step.

The axis stepper motors all have six wire connectors. All of the
original connectors were arranged in a different order, but for each
motor, the red and blue wires are one coil, and the green and black
wires are the second coil. White and yellow are centre taps for each
coil. We won't need the centre taps. All three motors originally attach
to the main board and are driven by SI-7300A chips. The driver chips are
fed with 33V, via a zener diode and transistor from the 35V supply.

### Limit switches

There only appear to be limit switches for one end of each axis.

Power
-----

We need:

-   24V for the Smoothieboard VBB
-   12V to feed the Motor PCB
-   5V to feed the spindle speed sensor, and optionally the 5V on the
    Smoothieboard, although it can generate its own

![](Ex-laser_cutter_power_supply.jpg "fig:Ex-laser_cutter_power_supply.jpg")
The power supply taken from the old laser cutter can produce 24V, which
might be useful. On this power supply, mains (either way round) goes in
on the right, and 24V and 5V come out on the left. The top-left
connector was not in use on the laser.

The input to the Motor PCB is only expected to drive a couple of op
amps, so could be generated from a linear regulator off 24V.

Chuck
-----

Roland have a bizarre proprietary chuck which screws into the spindle
with a 9x1 fine pitch metric thread. This has been discarded and the
existing housing has been refitted with new bearings and a more standard
ER16 collet shank.

There is a mechanical drawing of the spindle holder on github:
<https://github.com/jmacarthur/camm3-spindle>

Pulleys
-------

![](CAMM3-Pulleys.png "fig:CAMM3-Pulleys.png") Here is a diagram of the
pulleys on the top of the machine.

This needs a 400mm long pulley which can fit into the 5mm wide v-section
pulleys. Since v-belt in this size is difficult to find, we recommend
using 5mm round belt instead. 5mm polyurethane belt can be found on
eBay, for example: <http://www.ebay.co.uk/itm/301494667571>. This can be
cut to the size required and welded by heating both ends with a lighter.
The join this makes is much stronger than you might expect.

[Category: Projects](Category:_Projects "wikilink") [Category:Roland
CAMM3](Category:Roland_CAMM3 "wikilink")