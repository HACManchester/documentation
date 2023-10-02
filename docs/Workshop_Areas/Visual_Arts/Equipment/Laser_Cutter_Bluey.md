The Blue Laser Cutter is usable by members who have had an induction.

Top-level specifications:

    900mm x 600mm
    100W Laser Tube 
    Awesome Extraction
    Air Assist
    Red-dot laser for bounds checking
    Smart cooling
    Rise-and-fall bed, Super useful for engraving stuff on stuff



## **Checklist for induction - Trainers Guide to Laser Cutting on Bluey**


### **Prerequisites**

Make sure they read through this page and if possible have lightburn setup on their machine with a design ready to cut

[Video on ruida controller](https://www.youtube.com/watch?v=l9nPmHXbX1I)  Note: we do not support RDworks.

You will need the profile for bluey which is [available here](config/Bluey.lbdev)

### **Showy Steps**



1. Introduce the laser cutter and point all the functions i.e. the bed size, where the cooler is, the extractor fan, menu selector
2. Always mention safety and safety features throughout, start with making sure the coolant pump is on (mention recommended temp and it should come on automatically if the laser cutter is on)
3. Open the cover. Mention the different parts, laser head, mirrors, lid switch for laser cut off
4. Mention what the lid switch does and how it can be useful but make sure it is not tampered with
5. Autolevelling and manually moving the bed with bluey
6. Talk about the menu and what the major buttons do but might be best to show it off when you start sending jobs to it. They don’t need to go into settings
7. Mention the materials we supply and what materials are allowed
8. Talk about the blue log book and money box. Mention the credit recording at the back of the book
9. Mention why it's worth recording the time even if you don't care about how much money you pay. Some people didn't get it until I had to spell out we want to know how long the laser has ran for, not what you paid for it


### **Demo Steps**



10. Move to the computer. Prep a job (make it as small as possible) and send it to the laser cutter to show how lightburn works
11. Show making a simple vector image with engraving and cutting a shape (the hacman keyring is a good one) and then a bitmap/jpeg to demonstrate the different file types
12. Mention the different options in lightburn and how you can manually tweak the settings
    1. Origin - how to set it
    2. Difference between run and send
    3. Line and Fill (offset fill is spiral outwards from middle)
    4. Advanced laser patterns on the shape properties
13. On the laser cutter, after the job is sent, talk about the menu options like frame
14. Talk about emergency stop and laser switch
15. Cut your piece
16. Get them to do the same. Keep it simple though, this is an induction
17. You have some time while the laser cutter is running to talk about relevant scenarios: so mention if there is a fire, what to do, how to emergency stop if the menu crashes, how to report issues with the laser and what issues to look out for.
18. Also remind them to record the time of the cut using the laser cutter display
19. Stop the laser with the stop button



**Advanced Steps (optional)**



20. Change the speed of the laser cutter to move the head around more slowly
21. Change the speed and power while the job is running. Pause the job and adjust settings
22. Minimum power settings 


## **Using Lightburn for laser cutting**


### **Lightburn**

Lightburn is the software that converts vector files into the code that drives the laser cutter. You can download lightburn from[ https://download.lightburn.org/](https://download.visicut.org/). 

We have a discount that gives you 75% off (but if you are using the software with any other laser cutter consider buying a full licence). The code is given on the member page after you’ve passed training.

![a typical screen in lightburn](images/lightburn_layout.png)

After you install the software, there is a help screen and then it will invite you to setup a device. Import Bluey’s config from here. 

![screen showing controls for a lasercutter in lightburn](images/lightburn_controls.png)


Buttons



* Square Frame moves the laser to show a rectangle boundary around the shape(s)
* Circle Frame moves the laser to draw the actual outlines of shape(s)
* Send will send the file to the laser cutter to store in memory
* Start will start the job without storing the file on the laser cutter
* Pause you can pause a job while running (TBC)
* Stop will stop the job and reset the laser head (TBC)
* Save RD File
* Run RD File
* Home
* Origin
* Optimise Cut Path 


### **Laser operations in lightburn**

Layers

Ordering

Engrave vs Cut

output, show, adjust speed and power


## **Operating the laser cutter**


### **Safety**



* The coolant pump _must_ be running before cutting starts. This is a metal box near the laser cutter which has a two-digit temperature display when switched on.
* Leave the coolant pump on for at least 5 minutes after cutting finishes.
* Fume extraction must run while the laser is cutting. This starts automatically when the laser is working. If the extraction doesn't appear to be working, stop cutting.
* Stay close to the laser cutter and watch it at all times when it's cutting. Fires can start very quickly.


### **In the event of fire / emergency**

![estop and laser switch](images/bluey_buttons.jpg)

* There is an emergency stop button on the front that is functional, this will turn everything off and is recommended as a power off switch. The turn switch will just stop the laser firing as well as opening the lid.
* If there is a fire you can safely fight it use the CO2 extinguisher available next to the laser
* If you can't do either of these, leave the space immediately, and call 999. The address is Wellington House, Pollard Street, Manchester, M40 7FS


### **Problems other than fires**

If the laser cutter does **anything** out of the ordinary please make sure it's reported to a laser maintainer. This can be done through the laser cutter telegram channel. If the response is "please put the out of order sign on the cutter" then do that. **DO NOT ATTEMPT TO FIX THE CUTTER YOURSELF.** If it is clearly not functioning, put the out of order sign on it and then report it. We will fix it as soon as possible.

Even if the laser cutter didn't work, let the chiller run for 5 mins before turning off.

### **Control Panel**


![control panel for a laser cutter](images/bluey_control_panel.jpg)

* There is a small set of keys and LCD screen which controls the laser
* Green - starts whatever job is loaded last or pauses the cut
* Z - raise or lower the bed
* U - rotate the rotary unit (not used)
* Pulse - fires short pulse that can be configured, normally used for alignment
* Focus - Auto level the bed to focus on material (WARNING- make sure your material will touch the push sensor behind the lens)
* Power / Speed - adjust before or during a job
* Origin - Set starting point for job
* Home - sets head back to 0,0
* Reset - restarts controller and zeros temporary values i.e. z height
* Square/Sine wave - sets movement mode continuous or sections (section length needs to be set)


### **Positioning the part**

Focus button for auto levelling or manually level bed with Z buttons.

Set the origin point using the laser cutter



* For cutting materials up to 6mm it's best to have the z height set to bed level.
* For cutting materials over 6mm, try to keep the z height 6mm into the material. Multiple passes may be needed.
* For engraving set the focal point to the height of the material by placing the guide on top of it.
* If you want crisp engraving on thick stock, you will need to do a 2-stage engrave / cut with the focal point initially set to the top of your material, and then re-set to the correct height for your cut.
* If your material has a protective cover, try to leave the cover on both sides of the material, or if only one side the bottom (not the top)


### **Test the Laser positioning**

Next we're going to do a boundary test to make sure the laser cutter is working on the area we think it's going to:



* Send the job from lightburn or use the frame buttons in lightburn
* Press frame on the laser cutter
* This can be done with the lid open to assist in placing your part, however please keep your hands/hair/ties out of the way of the moving parts.


### **Do the cut**

At this stage you should now be ready to do the cut for real.



* Send the job to the laser cutter
* Make sure the lid is closed, The laser won't fire with it open.
* Check the coolant pump is still working and the temperature is below 25.
* On the screen select the job and hit start
* Keep watching the laser while it cuts to check nothing goes wrong (e.g. fires)
* Check the extraction fan is working (you can tell either by the noise it makes, or by vibration of the exhaust hose).
* Make a note of the time at the end of the job in the log book
* Turn off laser cutter after 5 minutes


### **Logging and payment**



* There is a blue log book for keeping track of usage of the laser. Please write down your name and the length of time you've used the laser for in the front of the book.
* The laser is currently billed by 10 minute or 1 hour increments, with the rate written on the laser cutter.
* Laser fees can be paid in cash into a box near the laser, which should be clearly marked, or from your member balance at[ the members' system laser page](https://members.hacman.org.uk/equipment/laser).
* If you owe the laser fund money or have some credit (e.g. have paid with a £10 note and only used £3) record your balance at the back of the log book.


### **Things to not worry about**

* Pulse
* U+ or U-


# Upgrade training

You will need to cover:



* Safety again
* Using the on device controls (emergency stop, control panel buttons)
* Sending files to laser cutter using lightburn
* Difference in nomenclature (frame vs boundary)