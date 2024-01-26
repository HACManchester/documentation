![](Twitdrum.jpg)

Project Members
---------------

-   [Tallscreen](user:Tallscreen "wikilink") (see the [project
    homepage](http://paulplowman.com/projects/twitter-drummer.htm) for
    more info)

Idea
----

A device which plays rhythms on actual percussion instruments, and
responds to Twitter messages.

Hardware
--------

The physical device consists of four solenoids (salvaged from HP laser
printers) with 'drumsticks' which actually hit the instruments. These
are driven from a 24V transformer (salvaged from a Canon printer), and
controlled through a transistor interface by an Arduino with an Ethernet
shield.

The instruments consist of a cowbell, two bongos, and a larger drum.

The actual drum part has been working for some time now, although I've
refined it recently.

Software
--------

Currently, the Arduino sketch holds the rhythm patterns as a string of
16 hexadecimal nybbles, each representing one semiquaver, with each
instrument as one bit.

There are multiple patterns, and every bar each instrument chooses a
random pattern, giving a huge range of combinations.

The drummer works in one of two ways: Originally it read an online PHP
script which accessed Twitter and did most of the processing. Then
version 2 did all the processing on the Arduino, so it connects direct
to Twitter. For version 3, I'm thinking of going back to reading an
external script, so I can incorporate lots of advanced features.

Arduino sketch to follow - soon!

Present Status
--------------

The device works fine. It's been shown at
[Playspace](http://madlab.org.uk/content/madlab-exhibits-at-playspace/)
in Manchester, and [Maker Faire UK 2011](http://makerfaireuk.com/) in
Newcastle.

Like I mentioned, I'm going back to reading a PHP script so I can do
such things as allowing people to make up their own rhythms and so on.

[Category:Projects](Category:Projects "wikilink")