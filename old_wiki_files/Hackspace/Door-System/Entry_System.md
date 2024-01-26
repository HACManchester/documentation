Intro
-----

We could have gone to Wilko and get a standard wireless doorbell right?
Nope! We have a much more interesting solution.

Features:

-   When you enter it plays a member entered noise
-   When the doorbell is rung it plays a doorbell noise
-   Screens are displayed on the big TV above the door
-   Announces who has just entered.
-   Plays music

Name
----

This needs a catchy name. Something like
Greetr/ChimeyMakeGoScreen/TheBigDong.

Function
--------

When the doorbell button is pushed, the Pi in the door broadcasts an
MQTT message announcing the button is pressed. The message is received
on the Pi above the door, and the doorbell sound is then played through
the speakers.

Above the door we have: Pi, running fullpageos that points to an
Angular/Express app that shows the screens, and also listens for the
MQTT commands. This then announces who is entering. Also on the Pi is
Mopidy, a music service connected to Spotify. Password can be obtained
from cone/Rossy/others who got it working. We also have an amp connected
to the big speakers. In event of these failing, connect to the TV aux
input. We also have a spinning light but due to a change in amplifier
this is not used at present and needs to be wired in again.

ToDo
----

-   Wire in spinning light.
-   Easy addition of screens/notices.

[Category:Hackspace projects](Category:Hackspace_projects "wikilink")