# Induction Information

Hello, Test inductions are now happening. You can signup by contacting me. 

The induction is in 2 parts and this page covers part 1.  

We can usually provide scrap wood and aluminium for the inductions, however if you’d like to make something functional, you can buy a sheet of aluminium or Oak/Birch for £5.

The induction parts are below: These are independent inductions, and you can use the Chunky for most things after 'CNC Induction.' The precision machining induction focusing on advanced tools and materials, allowing you to machine steel and use the lathe axis.

- CNC Induction
- Precision Machining induction

Part 1: CNC Induction

It is required to have a little CAD experience before inducting. One class at the hackspace CAD course is sufficient to make a simple model. It is helpful if you have a simple model prepared [requiring 1-2 tool changes] but not required.
The induction is 1 on 1, and will take around 2 hours. After induction you will be required to create and machine a quick model before being signed off. You can arrange it by contacting us on Telegram. 

**The documentation below details some of the information covered. You do not have to read it, but it will save both you and the trainer time if you do.**


Introduce and explain the machine itself:
                                                              
Electronics box, start, stop, estops. Jog controller

The electronics box is under the enclosure. Explain how to start and stop it. Explain the 4 estops, what the hardware estops do, and why it is generally preferable to use the software estops.
Explain how to setup the jog controller, and to plug in the cable to the right port. Explain how to start pause alter and stop jobs on the controller. Explain the jog controllers software estop.

Limit Switches, Gantry and Spindle 

Remove the left enclosure panel. Explain that people can do this if needed for workholding or cleaning up, but that it should be on when machining. Point out the limit switches and what they do, explain not to touch them. 
Emphasise that the gantry is heavy and powerful, and not to try to move or stop it by hand. Similarly the spindle, point out the flow indicator and cadence. 

Collets and tooling

Explain how to use the collets and spanners. Explain workholding options.

Vacuum and Air

Explain the vacuum, air blast, and collet fans. 

Mist/Oils

You use IPA for aluminium currently. You do not use fluids for wood. No further explanation is required on this currently, except not to flood the room with IPA.

Setting up induction stock

Do workholding of the stock, explaining options and things to watch out.

**Move over to the PC.**

 1. What is IOsender? Explain how IOSender works, and how it interfaces with the machine and the gcode. Jog around in it and explain functionality and the real time streaming.
 2. Explain how to use the FTP server or usb sticks to transfer files
 3. Explain fusion, and ask them to open their preprepared model. If no model is preprepared, quickly run through making one with 1-2 features so you can move to cam. Explain basic cnc design philosophy
 4. In the CAM element, help them to do the setup operation. Once this is done and WCS set in fusion, move to IOSender and explain how to zero stock. Use the paper method for Z.
 5. Move back to fusion, and help setup the CAMMING operations. Pay particular attention to stepdown, paths, and f&s. Setup the correct endmill in the machine. Run simulations.
 6. Provide a little information on endmill philosophy and choices.
 7. Show how to postprocess files and load them into IOSender. 
 8. Use the checklist and let them start the machining job. 
 9. Add very basic aspire intro, open and explain it if you have time.
 10. Use the jog controller to start, stop, and pause jobs. 

Explain never to:

 - Lean over spindle/touch work whilst moving
 - Leave machine unattended
 - Run code without checking and simulating
 - Use the wrong endmill types

Warning signs: 

Burning smell
Snapped Endmill

At the end of the induction, ask the inductee to create and cam up a model ready for machining. They will have a quick test session to machine this. If all goes well, they are then inducted. 
