# Oneplus Firmware Extractor
Easily extract the firmware and modem from stock OxygenOS images for use with other roms.

## No OxygenOS flash to your device is necessary
You can sideload the extracted firmware without needing to flash OxygenOS over your existing Lineage or MicroG Lineage OS.

Extract the official firmware by yourself, without relying on third parties or potentially untrustworthy hosting sites.

## Compatibility
To run the extract script:
- Any operating system with bash; all Linux distros and MacOS.  Not tested on Windows or WSL.

Device:
- For Oneplus 3, 3T, 5 and 5T devices

*(should also work for others, but you'd need to create the directory hierarchy + pull the **update-binary** and **updater-script** from the OxygenOS zip for `oneplusx/META-INF/com/google/android`)*

## How to Use
1. Clone this repository
2. Obtain the *latest* copy of OxygenOS from [Oneplus](https://www.oneplus.com/support/softwareupgrade) as a **.zip**
3. In your terminal, navigate to the directory where you cloned this repo: `cd firmware_oneplus && ls -l` - if you see the directory contents, you're ready to go

The command-line parameters are in 3 parts *[ [Explain this Command](commands-explained.md) ]*:
- Script being executed (extract.sh)
- OxygenOS image (what you downloaded from Oneplus)
- Phone model


Example query to be pasted into your terminal (you'll need to adjust the parameters to suit):
```bash
./extract.sh \
/home/angela/Downloads/OnePlus5Oxygen_23_OTA_048_all_123456.zip \
oneplus5 \
out/oneplus_5/firmware-update.zip
```
(**Hit enter** to execute the command if you pasted it into a notepad to edit your parameters and then into your terminal.)


***

## Updating Your Device
Once **extract.sh** completes (it may take a moment - do not interrupt it), locate your flashable zip in the destination you specified (the terminal will tell you the path!)

- Connect your device to your computer via USB and run `adb devices` from your terminal to initiate a connection
- In TWRP Recovery:


1. Advanced
2. Sideload

- TWRP will prompt sideloading has started; from your terminal, run:
```bash
adb sideload out/oneplus_5/oneplus_5_oxygenos_9.0.5_firmware.zip
```

That's it.

Note: If you tried to update before flashing the firmware, you may get an "update failed" notification once Lineage boots back up.  Simply go to Settings > Update > Install again and let it do it's thing.  It should then finish the upgrade with the latest Oneplus firmware.

## Current Firmware
As of May 1, 2019 the latest firmware is **9.0.5**

### Caveats
No responsibility to anyone but yourself if you brick your device!

## Author & License
Original author [Koenkk](https://github.com/Koenkk) commits licensed under public domain

Bash script updates, readme by [Angela](https://github.com/angela-d) commits from Angela's repo GPL2
