About
-----

This is the code for the Gimp plugin to export for the sign!

### Code

filename: save_to_led.py

    #!/usr/bin/env python

    from gimpfu import *
    import os

    def getpixel(drawable, x, y):
        tile = drawable.get_tile2(False, x, y)
        x_offset = x % 64
        y_offset = y % 64
        pixel = tile[x_offset, y_offset]

        values = []
        for i in range(len(pixel)):
            values.append(ord(pixel[i]))

        if len(values) == 1:
            values.append(255)
        return values

    def led_sign(img, layer, filename, rawfilename, hidden, time, append) :
        width = img.width
        height = img.height
        tmp_img = img.duplicate()
        tmp_layer = tmp_img.flatten()
        if append:
            out_file = "\r\n%s\r\n" % time
        else:
            out_file = "%s\r\n" % time
        for y in range(0, 32):
          for x in range(0, 128):
            if (x < width and y < height):
                tmp_pixel = getpixel(tmp_layer, x, y)
            else:
                tmp_pixel = [0, 0, 0]

            if(tmp_pixel[0] > 128 and tmp_pixel[1] > 128):
               out_file += '3'
            elif(tmp_pixel[0] > 128):
               out_file += '1'
            elif(tmp_pixel[1] > 128):
               out_file += '2'
            else:
               out_file += '0'
          out_file += '\r\n'

        file_object = open(filename, append and "ab" or "wb")
        file_object.write(out_file[0:-2]);
        file_object.close()
        return

    def register_save():
        gimp.register_save_handler("file-led_sign-save", "led", "")

    register(
            "file-led_sign-save",
        "Export for LED sign",
        "Exports the current image for use on the HACMan LED sign",
        "Bob Clough",
        "Bob Clough",
        "2012",
        "<Save>/HACMan LED sign",
        "*",
        [
              (PF_VALUE, "no_idea", "No Idea", None),
              (PF_STRING, "out_time", "Time to show frame (ms)", "01000"),
              (PF_BOOL, "out_append", "Append to file", True),
            ],
        [],
        led_sign, on_query=register_save
            )

    main()

[Category:LED Sign](Category:LED_Sign "wikilink")