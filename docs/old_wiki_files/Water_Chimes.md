Project Members
---------------

-   [Tallscreen](user:Tallscreen "wikilink")

Idea
----

Originally I created a project which was a bit like windchimes but
activated by light. Then I modified it to use water rather than light.

The user moves their hand around in a container of water, which
electronically generates the sound of tinkling chimes.

Hardware
--------

This started as something to test a MIDI shield I'd made. Basically, it
has a potential divider made of two LDRs, which is connected to an
analog-in pin. As you wave your hand over the LDRs it outputs rising and
falling MIDI note data.

Since I decided to make this a proper project, I've added two buttons to
set the sensitivity limits of the two LDRs (in software).

Also, I've had this plugged into my (musical) keyboard, but the
intention is to get a small MIDI sound-module. I've had a look on eBay,
and they actually go for more than I expected. Due to my obsession with
my projects costing as little as humanly possible, I've decided that a
better solution might be to get an old keyboard (with MIDI) and use the
innards from that, removing the bits I don't need. The actual PCBs
inside these things are remarkably small, and they have built in amps
and speakers.

I've now bought a couple of keyboards off eBay for 99p each (the sellers
were not happy there \*snigger\*). I just have to take one apart and see
how it's connected up (for power button, etc.). I can live with doing
everything (like changing voices) in software, but you still need to
press the power button to turn it on.

UPDATE! I've now changed this project to work off water rather than
light. There is a container of water with 5V across it. The user puts
their hand in the water and completes a circuit by touching a conductor
on the edge of the container with their other hand.

The sensitivity buttons were removed because the voltage across the
water is constant - unlike when I was using LDRs.

Software
--------

The software reads the input voltage and maps the value onto the
note-range of the MIDI sound device.

Also, to make it more like proper chimes, the notes are echoed, and have
randomness built into their decay volumes and timings.

Present Status
--------------

UPDATE! This was changed to work off water rather than light, and has
been finished to a point where it can be exhibited, which it was at
FutureEverything 2011

It works, but the electronics are a bit of a mess to look at. They are
currently hidden.

I've decided that this is going to be my first project to take the
Atmega chip out of the Arduino and into it's own custom board.

FURTHER UPDATE!

This project has now been disassembled! I've decided to take the inner
workings and do something else with them. The water chimes were cool,
but there were too many things about them which frustrated me, so I'll
be modifying the remains into something new.

[Category:Projects](Category:Projects "wikilink")