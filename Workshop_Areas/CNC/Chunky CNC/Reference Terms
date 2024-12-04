This file is intended to act as a general reference to understand the terms and acronyms in the documentation.

## Machine coordinates reference

The machine operates in positive coordinates for XY, and negative on Z. The zero is back left, so right to left is X0-600 and back to front is Y0-400.

The G58.3 (toolsetter location) is X0Y498.


## **G-Code commands/Reference - This covers basic and common commands only**

You will learn how to directly enter gcode during the induction.

**Homing and toolsetting:**

- G28 - This instructs the machine to 'go home' which in the case of Chunky is the same as the homing position, in the back right. Typing the command G28 will work fine, and the machine will rapid to that position. G53 will work in the same way. To avoid crashes in your current workpeice, read up on this command here: 
https://gcodetutor.com/fanuc-training-course/g28-gcode.html

M6T99 - This instructs the machine that you are going to connect the 3D probe, and that you will want to reference TLO once done. It disables certain commands like turning on the spindle to protect the probe. This is usually followed by a 'cycle start' command once the probe is ready. M6 tells the machine it's a "toolchange" and T99 means tool number 99, which we have assigned to the 3d probe. It then enables the protection routines automatically.

**Spindle Warmup:**

M3 - This instructs the machine to turn on the spindle. Sometimes you will want to warm it up before machining. M3 means "turn on and rotate clockwise. You can similarly use M4 for counterclockwise.

S15000 - This is used in conjunction with M3/M4 and instructs the spindle speed. In this case, you would set the speed to 15000RPM. An example command would be M3S20000, which would instruct the spindle to rotate clockwise at 20000RPM.

**Jogging:**

G0 - This instructs the machine to move at 'rapid' or 'maximum' speed. It is used in conjunction with the commands below to move the machine to particular coordinates.

G1 - This instructs the machine to move at a set speed, in conjunction with the F commands below.

F1000 - This sets the feed rate, for a G1 command. 

X5Y5Z-5 - This instructs the machine to move to the following coordinates. It is used in conjunction with G0 or G1. 

An example of these commands together are as follows: To move to machine to x400y400z-100 at a feed rate of 4000, we would type G1F4000X400Y400Z-100. To move it at max speed, we would simply type G0X400Y400Z-100

## Common terms reference:

TLO - Tool Length Offset. This refers to setting the toolsetter 'reference' with the 	3D probe before machining.
Gcode - This is output of your cam program, which the controller reads to run a program and make your part
CAM - Computer aided manufacturing. This is how you turn a 3d design into gcode ready to machine.
WCS - Work coordinate system. This is setup by yourself as part of a job, and is viewable in the offset tab. You will usually use G54 for your WCS.
DRO - Digital Read Out. This is the output in your program and on the jog controller, which shows where on the machine the spindle is.

