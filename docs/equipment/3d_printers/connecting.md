# Connect Your Computer to the Printers

The information on this page is intended for inducted HacMan members who want to set up their own computer to connect to the printers. Your computer must be connected to the Hackspace Wi-Fi or wired network. Do not change printer network modes, shared credentials or machine-wide settings.

## Prusa MK4 printers

| Printer | IP address | PrusaLink key |
|---|---|---|
| Kim | `172.16.0.123` | `dmAPJnhhJ37VXBV` |
| Romanov | `172.16.0.124` | `TKrGNbjAsFUBUTf` |

### Add a physical printer to PrusaSlicer

1. Connect the computer to the Hackspace network.
2. Open PrusaSlicer and install the Original Prusa MK4 0.4 mm preset if it is not already present.
3. Open the physical-printer configuration and add the intended printer.
4. Enter its name, IP address and PrusaLink key from the table above.
5. Save it as a physical printer.
6. Slice with that physical printer selected, check Preview, then use the bottom-right **G** button to send the file.

If sending fails, first check that a physical printer—not the generic MK4 preset—is selected.

### Use PrusaLink in a browser

It is acceptable to use the Prusa MK4 printers with a different slicer or correctly prepared custom G-code, provided the file is suitable for the selected printer, nozzle and filament.

Visit the printer's IP address from a device connected to the Hackspace network. Use:

- username: `maker`
- password: the matching PrusaLink key above

This can be used to upload correctly prepared G-code without configuring PrusaSlicer. Confirm that the file was sliced for the correct MK4 and nozzle before uploading it.

## Bambu P1S

| Name | IP address | Current access code |
|---|---|---|
| Delilah | `172.16.0.201` | `32943394` |

The access code can change. If the stored code does not work, read the current code from the printer using the instructions below and let the maintainers know that the published code needs updating.

### Bind Bambu Studio

1. Connect to the Hackspace Wi-Fi or wired network.
2. Open Bambu Studio and select **Device**.
3. Choose **Bind with access code**.
4. Enter the printer's IP address and current access code.
5. Open the camera feed to confirm the connection.
6. Synchronise the printer, nozzle, build-plate and AMS filament information.

The camera is available only from within the Hackspace network, including Hackspace Wi-Fi.

### Find the current access code

1. At the printer, select the third menu option.
2. Open the entry showing `WLAN: Hackspace`.
3. Read the displayed access code.

!!! warning "Shared connection settings"
    Never change the access code, disable LAN mode or attempt to sign the shared printer into a personal account. Doing so breaks access for other members and requires maintainer intervention.

### Report a changed access code

If an access code or other connection detail has changed, please tell the maintainers using any of these routes:

- contact the 3D printing team on Telegram;
- post on the HacMan forum; or
- submit a broken-tool report using one of the QR codes displayed around the Hackspace.

Include the printer's name and explain which detail appears to have changed. Do not post the new access code publicly on Telegram or the forum; a maintainer will verify it at the printer and update this page.

## Bambu P2S printers

| Printer | IP address | Access code |
|---|---|---|
| Artemis | `172.16.0.15` | `7afd1f56` |
| Constantine | `172.16.0.115` | `7494b598` |

## Credential changes

These credentials are published for HacMan members as shared workshop connection information. Members should report changes using Telegram, the forum or a broken-tool QR code. A maintainer should verify the new value at the printer and update this single page rather than copying it into multiple guides.
