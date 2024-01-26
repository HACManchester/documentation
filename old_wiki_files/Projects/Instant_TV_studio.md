Why
---

This came about from the death of Fab Lab Manchester.

Before getting wind of the closure we had blagged the keys to allow us
to do collaborative projects on a Thursday evening. Though a condition
of use of the FabLab no one actually documented their projects and if
they were documented they may not necessarily appear on the FabLab web
site. So we started to document projects using cameras. The intention to
show that some useful work did go on. To get the full story we used
three cameras and recorded the sound.

This required three memory cards with space three lots of charged
batteries, then removal of the cards copy to a machine then use a video
editor to stick them all together. Not simple enough.

The challenge was to make a four camera TV studio as easy to use as a
smartphone.

Also no that is Zero post production is a requirement as people (err me)
are just too lazy to edit shite later.

Components Used
---------------

The studio is made up of the following parts:

##### CAMERAS

Four 1080p cameras, these are ethernet security cameras from hlong see
alliexpress at about £25 each they are good value, and not a bad image.

They use a combination of two chips The Sony IMX322 and the Hi Hi3516C,
though improved versions may exist now. The technical specs are
irrelevant the purchase decision was made by a couple of pigeons.

<https://www.youtube.com/watch?v=_JB8-RWIe30>

<File:Hlong1080.png%7CHlong> 1080p ethernet camera

This is the vital string to put in the obs studio to make it all sing.

<rtsp://192.168.10.1.10:554/user=admin&password=&stream=0.sdp>?

#### NETWORKING

Though the cameras are 100Mb ethernet with four to be connected to a PC
with a 1Gb netcard it seemed sensible to use a 1Gb ethernet switch.

<File:NetgearGS305.jpeg%7CNetgear> GS305 Switch

It was found that taking the cameras through multiple cascaded switches
increases the delay and as we can see later having a predictable delay
is important for sound sync.

Fortuanately the switch has an L'Shaped PCB which fits nicely in the
50mm trunking used as the case.

#### LIGHTING

Four lighting panels were constructed using these LED chains. These were
purchased from that auction site for £12 in total giving 120 cool white
LEDS maybe a mistake as they taint the video blue but more on that
later.

<File:Coolwhite.jpg%7CLed> Chain

#### SOUND

Though the cameras have microphones the quality is poor so I had Belkin
tunestudio which is easy to use and had a burr brown adc which is more
than acceptable

<File:Tunestudio.jpeg%7CBelkin> TuneStudio

I struggled with the sound as I first purchased a couple of cheap
shotgun mics, I think these really should be used in open spaces. I had
a couple of Audio Technica boundary Pro 44 which I picked up for £25
each and they are really not bad. They are omni directional enough for
use.

<File:ATMic.jpg%7CAudio> Technica Mic

#### CONTROL UNIT

As someone who stopped playing video games after they fixed the bug on
the pub space invaders machines that allowed free play, it was not
immediately obvious that on of the game thingys does a fine job to
switch between cameras

<File:Gamepad.jpeg%7CCamera> Controller

#### SOFTWARE

Though I think the use of computers for games (and indeed all games) are
just for normal folk, I am mighty glad that I invoke the prime directive
and let them get on with it. That way I can get all nice things like
graphics cards and cherry keyboards and RAT mice, so I do follow what
the gaming community get up to. They seem intent on not just playing but
watching other play games as well, this means that some bright
programmers have knitted together just the tool we need.

<https://obsproject.com/>

Though I really hate proprietary software (Brittain's Law "If it has a
licence key you are using the wrong software") I can see that some of
what you pay for is better than some of the FOSS dross I am just payment
averse, well in this case this is top notch fresh meat.

It does everything required and what is more is cross platform and is
absolutely free non of this cut down free version with missing pay for
features.

What Next
---------

This will appear at Hacman with a HIP sticker (Hack in Progress) what
that means is I am hacking it and anyone else is welcome to collaborate
on it with me.

##### These are the challenges

1.  LIGHTING -Blue tint on recording from LEDs, in fact the CCTV cameras
    don't need the lighting much of the time so this is not such an
    issue, however two things solve this, OBS has real time filters so
    it will allow changing the colors. Also some form of diffusion would
    be beneficial. A side or uplight may be a good addition.
2.  SOUND SYNC - The delay from the cameras is fairly consistent so
    adding a delay into the OBS studio get round a lot of these issues,
    but more work needs to be done.
3.  CAMERA JITTER - The image after 15 minutes goes pair shaped, I have
    some mini fans which solve this.
4.  CASE DISTORTION - It bends have produced some more parts that need
    fitting
5.  STAND - I have a clothes stand which does work but a better job can
    be done.

##### Improvements

Fixing the challenges is all that will be done on this version as we
need to start using the devices for maker propaganda. Version 2 can be
started later.