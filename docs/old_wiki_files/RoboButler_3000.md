![](RoboButler3000-10Aug.jpeg "RoboButler3000-10Aug.jpeg")

This is a project by [Jim](User:Srimech "wikilink") and
[Bob](User:Parag0n "wikilink") to make a drink-carrying robot for
EMFCamp 2014. A stripped down version of the RoboButler 6000 but
Software Upgradable.

See also subpages: [RoboButler
3000/Parts](RoboButler_3000/Parts "wikilink") and [RoboButler
3000/Links](RoboButler_3000/Links "wikilink")

Requirements
------------

It needs to be able to carry a beer crate (that is, 24x beer or coke
bottles) over a grassy field and probably a bit of mud as well. It
should have headlights and a horn and a pan/tilt camera.

A beer crate is approx 240x240x400mm (measured from a Fritz-cola
cardboard crate)

Current status
--------------

RoboButler 3000 drives and is controllable via WiFi.

Software and notes
------------------

Android & Python code is at <https://github.com/jmacarthur/RoboButler>.

MBED code is currently stashed on mbed.org; it'll be copied into the
github repository as soon as I figure out how to.

To do list
----------

-   SSL connection to Android app (this is unnecessary once we get the
    Pi connected, though)
-   Better controls on the Python side
-   Ability to shut down over CAN (currently we only start up, and
    though we can switch off drive, the system still draws about 0.3A.
    This would involve switching the relay back to the joystick unit and
    'pressing' the power button again to reduce standby power.

Components
----------

<figure>
<img src="wheelchair_motor.jpeg" title="wheelchair_motor.jpeg" width="200" alt="wheelchair_motor.jpeg" /><figcaption aria-hidden="true">wheelchair_motor.jpeg</figcaption>
</figure>

Bob has two wheelchair drive trains (motor, gearbox and wheel) and the
original speed controller and joystick unit. These have been tested and
work well. The communication protocol between the speed controller and
joystick is believed to be CAN-based.

They are of the type shown on this page:
<http://bobgreiner.tripod.com/id58.htm> - 24V, about 300W.

This page also has some info: <http://www.hackingsma.com/?p=257>

Jim has 4x Hawker PC680 17Ah 12V lead acid batteries. These are approx
74 x 166 x 180 mm and weigh about 7kg each.

Jim also has two spare Android phones and a IOIO board which could be
useful for GPS / GSM / Wifi / Camera / Accelerometer.

Bob has a BeagleBoneBlack and a few i2c accelerometer / gyro devboard.
Bob has a couple of SRF radios which can be used for connecting to the
badge network for comms with badges.

EMF have sponsored a 24V 7A battery charger to charge the robot quickly
on site.

Controlling the motor controllers
---------------------------------

See [Dynamic controls motor
controller](Dynamic_controls_motor_controller "wikilink")

Stupid ideas
------------

-   Jim should have an ankle bracelet which beams out tons of IR so the
    robot can follow him around the field.

<!-- -->

-   It should be called Benton.

<!-- -->

-   There should be stereo cameras on board which are fed back over wifi
    and displayed in red/green 3D anaglyph.

<!-- -->

-   There should be a mounting point for an umbrella.

<!-- -->

-   Ability for the robot to be 'called' and sent on errands from a
    TiLDA badge

[Category: Projects](Category:_Projects "wikilink")