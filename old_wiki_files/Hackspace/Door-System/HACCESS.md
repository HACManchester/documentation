<img src="Haccess.png" title="fig:Haccess.png" width="300" alt="Haccess.png" />
Hackspace Access Control/Card Entry Sentry System (HACCESS) is a series
of access control nodes spread around the hackspace, used for access to
machines that require special training or an induction. And also to turn
the coffee pot off.

[GitHub Link](https://github.com/thinkl33t/HACCESS)

Usage
-----

The plan is to eventually to replace the isolation switches on the
benches and the kitchen worktop with HACCESS nodes, so that we can have
a HACKSPACE OFF button by the door, and monitor what is on / off from
the interweb. The user will come up to a device they want to use and
press the green button. If the device needs RFID, it will ask for it to
be scanned, if not it turns on. Each press of the green button while
authenticated adds 30 minutes to the timer, so you go to the bench,
press green twice for an hour. If its getting close to the end of the
timer, the beeper starts beeping, and the user can press it again for
another 30 minutes.

Ideally, the HACCESS nodes would also let us mark people as trained. So
a trainer presses a blue button, scans their RFID, then scan someone
elses. The second user now has access to that machine.

<parag0n>` Ooooh the buzzer could play the countdown tune and flash its screen towards the end of the session.`

Basic Design
------------

<figure>
<img src="HACCESSv1.png" title="HACCESSv1.png" width="300" alt="HACCESSv1.png" /><figcaption aria-hidden="true">HACCESSv1.png</figcaption>
</figure>

-   FM1701 RFID reader
-   5110 LCD Unit
-   3 buttons
-   Buzzer for alerting
-   esp8266 WiFi comms
-   2x Status LEDs
-   Output Devices, any of:
    -   Opto Coupler
    -   FET
    -   Relay
    -   SSR
-   Sized to fit in a regular single pattress, with a laser cut front

[Category:Cleanup 2015](Category:Cleanup_2015 "wikilink")