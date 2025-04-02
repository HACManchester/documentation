# Access System

## Keycode access
The keycode access system runs in parallel with the fob access system. 

### Hardware

It consists of:
* A keypad outside
* A pi Inside
* A relay board inside

### Getting access codes
The Pi gets a (`announce_name`, `fob_id`) CSV list of valid members every few minutes from the membership system and stores this locally.

`fob_id` may sound like it's for fobs only but we've adapted how we use the fob table to include access codes. To separate the two, access codess start with `ff`, whereas fobs don't.

When a code is entered, the code is compared to the list of all codes that start with `ff`. If there's a match, the door is released.

### Requesting an access code
When requesting an access code in the membership system, it's the same functionally as adding a fob with ID `ff000000`. The backend identifies any new fobs that start with `ff` and discard them, instead generating and saving a random 8 digit number.

Common numbers like `12345678` etc have already been blacklisted so can't accientally become in use.

## Keyfob access
The current system has been in service for many years now and has proven mostly reliable.
However, it requires a Pi 1, due to a custom had that was made for it. 

It's therefore a candidate for modernising using a Pi 4.