Screens / Animations
--------------------

` START`
` `*`K`*
` N,Screen / Animation Name`
` `*`K`*
` 30,RRRGRGRGBBBBBYYYYRGBYGYY...`
` `*`K`*
` 10,GGRFGRGRGRGRBBBBBBBBBBBBBBB...`
` `*`K`*
` END`
` `*`K`*

` START`

sequence is sending to sign

` N, Screen / Animation Name`

Optional, if the screen is to be saved instead fo displayed, the name to
save it as. if this is not given it will be displayed immediately

` 30,RRRGRGRGBBBBBYYYYRGBYGYY...,12`

line of CSV:

-   \[0\] number of ms to display the screen for
-   \[1\] each pixel of the screen (B=Black=0, R=Red=1, G=Green=2,
    Y=Yellow=3), should be 4096 total
-   \[2\] checksum. add numerical version of each character to an 8 bit
    int. int is allowed to overflow back to 0 after 255.

Any number of these lines can be added

` END`

End of sequence, display now if no name is given

**Responses** are *K* for OK, *F* for Failed Checksum, *X* for Sequence
name in use, *E* for any other Error

Control
-------

` STBY`

Go into standby mode

` SHOW Sequence Name`

display the specified Sequence

` LIST`

list all sequences available

` DEL Sequence Name`

delete the specified sequence

[Category:LED Sign](Category:LED_Sign "wikilink")