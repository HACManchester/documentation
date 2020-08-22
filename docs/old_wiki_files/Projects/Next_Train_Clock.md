Project Members
---------------

-   [Tallscreen](user:Tallscreen "wikilink")

Idea
----

Make a clock which shows the time of the next train between two
particular stations, based on data from the interwebs.

Hardware
--------

I bought a clock from a pound shop, and removed the clock-module. I took
it apart, and discovered that it seems to work by sending pulses through
a coil which alternate in polarity every other second.

Since the clock will only be moving forwards, and usually only by 15-60
minutes at a time, I tried just driving the clock as fast as possible.

Connecting the two pins to an Arduino, I managed to increase the
rotation speed so that one hour passes in 36-odd seconds. This is still
a bit slow - if your next train is in an hour, you don't want to stand
for 30 seconds before the clock displays this properly. I've decided to
make a new pair of hands, and treat the second hand as a minute hand,
and the minute hand as an hour hand, so I can drive them 60x faster.

Unfortunately, I can't work out how the original circuit made sure that
the movement was clockwise. Currently, the direction it sets off in
seems fairly random! :S

Software
--------

Currently very basic. Created a "tick" function to advance by one
second, which energizes the coil with a polarity which depends on
whether it's an odd or even second.

Present Status
--------------

I've recently acquired a more expensive clock module. Hopefully this
will be more consistent. I need to take it apart and investigate.

[Category:Projects](Category:Projects "wikilink")