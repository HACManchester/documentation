DIYBIO Manchester & HACMan – PCR Thermocycler Project

DIYBIO Manchester and HACMan have teamed up to make a PCR Thermocycler
for DIYBIO’s nefarious DNA experiments!! PCR stands for Polymerase Chain
Reaction and a Thermocycler is a device that cycles heat! In order to
multiply DNA strands samples need to be heated to 950C, then cooled to
580C and then reheated to 780C. There are commercial PCR machines
available but they are expensive! We think we can do better!! We are
looking at realizing an arduino controlled Thermocycler with 4 modules
(three heating sections and one cooling section) which automatically
performs the heat cycling required on 16 DNA samples. The samples will
be provided in test tubes or eppendorfs??

The device, once realised might look something like the attached
diagram:
![<File:DIYBIO_PCR_Diagram.pdf>](DIYBIO_PCR_Diagram.pdf "fig:File:DIYBIO_PCR_Diagram.pdf")

For the control electronics an arduino Mega 2560 might be appropriate
running on 5 Volts with a high current 12V 100W supply for the heater
plate(s). The T0220 resistor can be controlled by a PWM fed N-type FET
transistor. The control loop for the temperature cycle would be a
feedback system based upon 0.5 second sampling of two 10k N-type
thermistors; one mounted on the Al heating plate and the other on or
near the sample carrier. The temperature of each plate can be displayed
on a 16x2 LCD display. The unit will be controlled locally via push
buttons and pre-stored temperature cycles or via a control program on a
USB connected computer.

Useful Part Numbers:

Farnell – 9566961 - VISHAY SFERNICE - LTO030F2R200JTE3 - RESISTOR, 30W
2R2 5%

Farnell – 1848688 - ARDUINO - A000047 - BOARD, ARDUINO, MEGA2560

Farnell – 1672366 - AVX - ND03N00103K-- - THERMISTOR, NTC, 10K, 3.5MM

Farnell – 1813384 - INTERNATIONAL RECTIFIER - AUIRF1010Z - MOSFET, N CH,
55V, 94A, TO220AB

Useful Websites:

<http://www.scq.ubc.ca/diy-pcr-notes-appendum-shooting-the-breeze-whatever/>

<http://learn.genetics.utah.edu/content/labs/extraction/howto/DNA_Extraction.pdf>

<http://www.synbio.org.uk/hardware/diy-lab-equipment.html>

<http://www.instructables.com/id/Coffee-Cup-PCR-Thermocycler-costing-under-350/?ALLSTEPS>

[Category:Madlab projects](Category:Madlab_projects "wikilink")