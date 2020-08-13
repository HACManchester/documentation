The Ping pong display is a proposed project for EMF2016 by Jim
MacArthur. Gavan Fantom of LHS has also offered input.

This is a plan for a cheap dot-matrix display using coloured ping-pong
balls inside clear plastic tubes. The design could be adapted for
different balls. We intend to create a prototype using smaller balls,
possibly coloured beads, as a prototype.

Display section
---------------

![](Blueprint.png "Blueprint.png")

Balls feed into the right hand side of the unit, one column at a time.
They need to be ordered when they are fed in - we will describe how that
is done later. When the full column is fed in, an actuator pushes the
whole column into the tubes. To stop ping pong balls falling out while
loading a column, there's another plate controlled by an actuator which
will block off the end of the tubes until the column is fully loaded
into the pusher.

At the other end of the tubes, a single column fills up with ping pong
balls as the input column is pushed in. This column is movable by
another actuator; once the input procedure has completed it will pull
back and the row of balls will fall either sideways or down (There
should be some vertical space below the output position, so the bottom
row can fall out correctly).

The unsorted balls then fall down into a sorting machine.

The sequence for the main display then is:

1.  Blanking plate back (uncovered)
2.  Output actuator forward (Leaving column space)
3.  Input actuator forward (shifting all balls into place)
4.  Blanking plate forward (covered)
5.  Output actuator backwards (dropping balls out of machine)
6.  Input actuator back.

4&5 can be simultaneous.

After this is completed, the machine waits for the input column to be
filled again, and the process repeats (it should wait for a signal from
a microprocessor though, as the display may not be scrolling
continuously).

Sorting section
---------------

This starts with a hopper or ramp which collects balls from the output
column and guides them into a single output row. This may require a
'knocker' or some other actuator to stop balls getting stuck. These
balls continue running downwards with gravity to a unit which detects
the colour of the next ball and pushes the ball diagonally upwards in
one of two directions - up and left for white, up and right for black.
This gives us two queues of white and black balls. The length of these
queues are important - they need to be long enough that there is no
chance of one queue filling up while the other one is empty.

At the end of both queues is another actuator which will push from
either queue into the output queue to create the required pattern. The
pattern then needs to be lifted into the output column, perhaps using a
bucket lift.

Actuators
---------

Ideally, we want something strong (as we may be pushing a lot of ping
pong balls) and quiet. Electric solenoids may not be strong enough.
Pneumatic would be but have the problem of having a compressor running
all the time. The compressor could be run quite some way away with a
reservoir on the display.

Pneumatic power has the advantage that we can easily use it to create a
lift by pushing balls along pipes.

We could also use electric gearmotors with cranks, which will be slower,
but smoother. Wiper motors with auto-park would be ideal.

Potential problems
------------------

-   Because of the wall thickness, a stack of plastic tubes large enough
    to fit ping pong balls into will be taller than a stack of ping pong
    balls - and so the rows won't match up.

<!-- -->

-   Crush strength of ping pong balls. We need to know how much force we
    can apply before one will dent - this may limit the length of the
    display.

Alternative designs - the 'connect 4 clock'
-------------------------------------------

The first idea for this design was an automated connect 4 board, which
fed in different coloured balls or counters from the top of the system
and emptied out rows one at a time to the bottom. A 'write head' would
move left to right across the top of the machine, dropping white or
black balls into vertical tubes. You could easily turn this into a clock
by emptying out one digit's worth of columns at a time.

Suppliers
---------

-   <http://www.clearplastictube.co.uk>
-   Ping pong balls: ebay

[Category: Projects](Category:_Projects "wikilink")