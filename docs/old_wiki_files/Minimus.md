Minimus[1](http://minimususb.com/) is an AT90USB162 based USB Key. It
has an AVR with hardware USB, a DFU bootloader, 2 LEDs and a Button. A
number of them were bought by uk hackspace members in February 2012.

![<File:Img0097zm.jpg>](Img0097zm.jpg "File:Img0097zm.jpg")

Minimus as an AVR
-----------------

It is supported by the
LUFA[2](http://www.fourwalledcubicle.com/LUFA.php) (Lightweight USB
Framework for AVR) Software Stack, Which is C based, and supported by
GCC-AVR.

Programming the minimus is done through the use of Atmel FUSE (in
windows) or using dfu-programmer Under osx and linux.

Bob has prepared the following cheat sheet, showing the pinout of all
the minimus' extra features

![<File:Minimus.png>](Minimus.png "File:Minimus.png")

In addition, Alan has some code that hooks the Minimus USART into
ARR-libc so you can use the USART for debug statements etc, and it also
provides a 1 millisecond clock tick. See the
ABAVR[3](http://sourceforge.net/projects/abavr/) project on SourceForge.

Minimus as an Arduino
---------------------

Coming Soon!

[Category:Projects](Category:Projects "wikilink")