# Github Repos

This is a list of the existing github repositories
including things to look at in terms of merging data


## Documenation

  * https://github.com/HACManchester/documentation  
    Main Documentation repo

  * https://github.com/HACManchester/.github  
    Header for the github organisation

  * https://github.com/HACManchester/digital-infra  
    This repo is private, it's details on accessing the new door system  
    But it's also for containing info about anything networking / firewalls / network diagrams etc  
    Rename to documentation_private

### Migration to Main Documentation

  * https://github.com/HACManchester/Space  
    I think this repo has a single poster and was acting as a issue tracker for Hackspace  
    sort of like a communal to-do list  
    TODO move poster to main documentation site

  * https://github.com/HACManchester/Tools.Lathe.ML7  
    Migrate this to the main documentation repo

  * https://github.com/HACManchester/Snippets  
    Snippets I think created for tools in the past  
    TODO Migrate anything useful here into the main documentation site

  * https://github.com/HACManchester/Tools.MetalCnc  
    Originally Alex sourced some Electronics from Ebay (currently in a box under the Metal Milling Machine)  
    This is the details on this

  * https://github.com/HACManchester/MMMMM  
    https://github.com/HACManchester/board_minutes  
    Chris M is working on moving these into the main documentation

  * https://github.com/HACManchester/constitution  
    This might be out of date anyway, but just check before deleting if anything needs moving over

  * https://github.com/HACManchester/Health-And-Safety-Signage  
  * https://github.com/HACManchester/Branding  
    Move to main documentation

  * https://github.com/HACManchester/Health-And-Safety-Rules  
    Check anything in here has been moved into the main documentation, then delete

  * https://github.com/HACManchester/Infrastructure-Projects  
    Plans for an EStop solution within the different workshop areas
    Migrate to main documentation

## Tools

  * https://github.com/HACManchester/Tools.CNC.Metal.Dethklok  
    Documentation and files related to the small 3020 CNC we have setup in electronics  
    For milling PCBs

  * https://github.com/HACManchester/Tools.OxCNC  
    Documentation and files related to the large wood CNC

  * https://github.com/HACManchester/Tools.Ender6.Klipper  
    Documentation and files for the new Ender6 Printer being setup

  * https://github.com/HACManchester/Tools.ProxxonCNC  
    One of the devices we still have in electronics is a tniy Proxon CNC, (originally the first we had)
    Needs a bit of setup to get it working properly but this is the docs related to that
    We still have it so keep this one around

### Migration

  * https://github.com/HACManchester/LaserCutter.PCB.Making  
    https://hacmanchester.github.io/LaserCutter.PCB.Making  
    https://github.com/HACManchester/Apps.Cad  
    A Lot of info for this one, migrate it across to Tools.CNC.Metal.Dethklok for milling pcbs

  * https://github.com/HACManchester/visicut-settings  
    Since we haven't moved the orange laser to a new control board yet, maybe keep this for now
    Move it to a Tools.OrangeLaser repo

  * https://github.com/HACManchester/pcb-gcode-settings  
    Move this to the 3020 CNC repo

  * https://github.com/HACManchester/Tools.Shapeoko2  
    TODO Move anything useful here into the Tools.OxCNC repo

  * https://github.com/HACManchester/LaserCutter  
    This has the designs for the wooden base for the laser cutter  
    move this to the Tools.OrangeLaser repo

  * https://github.com/HACManchester/cura-settings  
    https://github.com/HACManchester/slic3r-profile  
    https://github.com/HACManchester/slic3r-settings  
    Move to a central repo with settings for all the different 3d printers - Tools.3DPrinters.Profiles  
    Potentially profiles for different filaments

  * https://github.com/HACManchester/sticker-printer  
    Rename to Tools.StickerPrinter

## Projects (Keep)

  * https://github.com/HACManchester/CogClock  
    This was originally a project of Bob's for a very large laser cut clock that mounts on the wall  
    It's still around hanging on the wall of the Hackspace  
    It's one issue is that the stepper motors are not strong enough to move the rings

  * https://github.com/HACManchester/Foundary.ElectricCoil  
    Details for a future project for building a Electric Coil Foundary for casting or hardening metal

### Card Access / Door System / Membership

These relate to the door access system, we have two different systems setup currently  
The old system Ben setup which is acting as a backup, sensor mounted directly to the door (I think Alfie).  
The new system mounted to the wall which can take pin numbers or rfid tags

  * https://github.com/HACManchester/FRED
  * https://github.com/HACManchester/door-alarm
  * https://github.com/HACManchester/haccess-code
  * https://github.com/HACManchester/ALF
  * https://github.com/HACManchester/HacmanDoorSwitches  
    Door Bell system I think
  * https://github.com/HACManchester/mqtt2telegram  
    Might be the scripts for the hacman bot channel on telegram
  * https://github.com/HACManchester/mqtt-2-sound  
    thing which makes a sound on door entry - linked to the newer door system I think
  * https://github.com/HACManchester/beacon  
    We used to have a large rotating beacon on top of the door I think to indicate the door bell had been pushed

Ideally we could do with merging all this into two repos one for the old and one for the new door system


### Membership system

Not sure of the status of these
some of this we might need but at the very least could do with being condensed down to less repos

  * https://github.com/HACManchester/membership-system
  * https://github.com/HACManchester/membership-deployment
  * https://github.com/HACManchester/BBMembershipSystem
  * https://github.com/HACManchester/membersystembeta
  * https://github.com/HACManchester/MCP-LDAP  
    I think this was an attempt at LDAP on an old version of the site
  * https://github.com/HACManchester/hacman_down  
    Some sort of placeholder if the main site is down?
  * https://github.com/HACManchester/MCP
  * https://github.com/HACManchester/nginx-proxy  
    Used by Zerocool
  * https://github.com/HACManchester/Hackspace-Ansible
  * https://github.com/HACManchester/hackiosk
  * https://github.com/HACManchester/redash-deployment
  * https://github.com/HACManchester/docker-compose-lamp
  * https://github.com/HACManchester/snackscreen

### Email / Discourse Related

  * https://github.com/HACManchester/Apps.Discourse
  * https://github.com/HACManchester/mta-sts.hacman.org.uk  
    something to do with email?
  * https://github.com/HACManchester/Cloud-Forum2Telegram  
    Posts notification to telegram on new mailing list post

## Further Investigation

### Potential Keep

  * https://github.com/HACManchester/docker-dokuwiki
    https://github.com/HACManchester/dokuwiki-demo-setup  
    This was a dokuwiki demo setup I did that uses markdown instead of the dokuwiki syntax
    If we could get a standard setup for the hacman authentication
    then this could be a good replacment for the existing docs setup



### Potential Removal

  * https://github.com/HACManchester/inkcut_dmpl  
    This appears to be a forked copy of https://github.com/shackspace/inkcut_dmpl  
    But it doesn't have anything additional to the copy it's forked from, just a couple of commits behind

  * https://github.com/HACManchester/Website  
    I think this is code for an old version of the original website from around 11 years ago?

  * https://github.com/HACManchester/1wire-2-mqtt
    Empty Repo

  * https://github.com/HACManchester/hackmap  
    Some sort of chart, not sure how to open it

  * https://github.com/HACManchester/Cad.Reciprocating-Model  
    Back before we had a CNC, we had an offer to make something to raise some cash for a CNC  
    I don't think we need this anymore as it was a long time back and a project for a hackspace member

  * https://github.com/HACManchester/Craft.Cabinet  
    Designs for a craft cabinet, not sure if we ever built this

  * https://github.com/HACManchester/Pumpkin-Hacking  
    Some details back when we had pumpkin hacking

  * https://github.com/HACManchester/Tools.3DPrinter.Ender  
    I think this is stuff for an older Ender printer we might not have around anymore
    Check with Harvy on this one

  * https://github.com/HACManchester/fortune  
    Some sort of python related project for telling fortunes?

  * https://github.com/HACManchester/MM2010  
    Something called March Madness from 2010

### Unknown

  * https://github.com/HACManchester/SketchV2  
    This might be the code for the giant electronic etch-a-sketch we used to have in the space.  
    I remember it was something that used to be taken to different events  
    But I think the hardware for it has gone now

  * https://github.com/HACManchester/ProjectASketch  
    Some sort of project similar to the etch a sketch but using a projector?

  * https://github.com/HACManchester/mqtt-2-bot  
    I think we used to have an IRC channel a long long time back  
    This appears to be code for hooking up MQTT to that

  * https://github.com/HACManchester/propaganda  
    Appears to be an old chart for the cost of hackspace?

