A.L.FR.E.D (Alfred Lets FRiends Enter the Door) is the Hackspace Door
entry robot.

It is comprised of:

-   A.L.F.I.E (ALFRED's Longed-For Internal Electronics) - Electronics
    board for interfacing with the RFID reader and the intercom system.
-   A.L.F (ALFIE's Logic Functions) - Software to run on ALFIE and
    control it's hardware.
-   F.R.E.D (Function for Realtime Entry Decisions) - Python software
    that runs on a Raspberry Pi, receives readings from ALFIE, and
    checks if the card is allowed access.

He is hooked into the intercom for the front door, provides buttons and
RFID access to open the door to the Hackspace at number 42.

Existing System Components
--------------------------

### RFID Reader

-   HID RP15 Multiclass RFID reader. Will read 13.56mhz rfid cards.
-   <http://www.hidglobal.com/prod_detail.php?prod_id=138>
-   5-16V DC
-   Standby 85mA
-   Peak 139mA

#### Pinout

As read from the back of the reader.

1.  BEEPER (YEL)
2.  HOLD (BLU)
3.  TAMPER (VIO)
4.  DATA1 (WHT)
5.  DATA0 (GRN)
6.  GRN LED (ORN)
7.  RED LED (BRN)
8.  +VDC (RED)
9.  GND (BLK)
10. SHLD (DR)

### Intercom System

#### Intercom Terminals

| Letter | Function   | Colour (a)     | Colour (b)        | Intercom Terminal |
|--------|------------|----------------|-------------------|-------------------|
| I      | Call       | Green & Yellow | Both Greens       | None              |
| R      | Microphone | Black          | Blue with White   | 1                 |
| O      | Common     | Blue           | White with Blue   | 3                 |
| T      | Speaker    | White          | Orange with White | 2                 |
| Z      | Lock       | Red            | White with Orange | 5                 |

#### Using the intercom

-   Connect O and Z to open door
-   When the buzzer is pressed, 12V AC at 50Hz is available between O
    and I

A.L.F.I.E
---------

[thumb](image:Alifieboard.png "wikilink")
[thumb](image:Alfiesch.png "wikilink") The schematics and board can be
downloaded from [Bob's
Github](https://github.com/thinkl33t/PCB-Designs/tree/master/Alfred).

The Board is designed around a Minimus 32k, as we have just bought a big
pile of them. It has:

-   A 10 pin connector that connects to the RFID reader.
-   2x 3A connections for control of DC sources.
-   2x Relays for opening the inner and outer doors.
-   A bridge rectifier and LM7805 for detecting when the buzzer is
    pressed.
-   An expansion port for future additions.

A.L.F
-----

The software to run on the minimus is written in C & C++, and uses LUFA
to act as a USB serial device. It is currently available on the [HACMan
github](https://github.com/HACManchester/ALF). To make modifications,
either fork and send a pull request on github, or send patches to Bob.

F.R.E.D
-------

This program runs on the raspberry pi. It is a python script, which
checks membership status against a list, and also controls the doorbell.
It is currently available on the [HACMan
github](https://github.com/HACManchester/FRED). To make modifications,
either fork and send a pull request on github, or send patches to Bob.

### MQTT

FRED publishes the following MQTT topics:

-   **door/+/rebooted** - When a doorbot is rebooted, this is broadcast
-   **door/+/opened/username** - When a doorbot is opened by RFID, this
    is broadcast. The payload is set to the user's username.
-   **door/+/invalidcard** - When an unknown RFID tag is presented at
    the door, this is broadcast.

<!-- -->

-   **door/outer/buzzer** - While the buzzer is activated on the outer
    door, this is broadcast every 0.5 seconds.
-   **door/inner/doorbell** - When the doorbell is pressed on the inner
    door.
-   **door/inner/opened/button** - When a doorbot 'open' button is
    pressed, this is broadcast.

[Category:Projects](Category:Projects "wikilink")