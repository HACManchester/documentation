# Readme

THis is a list of results from probing the 3D Printer bed.
With the prusa's you need to hook up a USB cable to the back then connect via a serial console such as via printrun

## Prusa XL

THere should be a USB-C attached to the back currently.
Tests have been run with a cold, 60C, 100C bed temperatures

## Running the Tests

To test the bed

  * Set the bed temperature manually
  * Run the following G-Code

```
G29
G29
G29 T0
```

For some reason I need to run G29 twice for the probing.
I think it might be due to something being enabled the first time around.
The `G29 T0` command will then output the results

## Formatting the Results

Next there's a bit of manual copy / pasting involved to get the data into a form that will work ith the bed visualiser

  * Replace " |" with ""
  * Re-order the lines from top to bottom instead of bottom to top
  * Remove any gaps or superflous lines

See the Formatted-Data-Cold.txt for an example

## Visualising the results

Copy the formatted data into this to see the results

  * https://i.chillrain.com/index.php/3d-printer-auto-bed-leveling-mesh-visualizer/

it's limit is around -1.5mm so anything below that will clip out
