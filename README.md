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

*(should also work for others, providing the images' hierarchy is similar)*

## How to Use
1. Clone this repository
2. Obtain the *latest* copy of OxygenOS from [Oneplus](https://www.oneplus.com/support/softwareupgrade) as a **.zip**
3. In your terminal, navigate to the directory where you cloned this repo: `cd firmware_oneplus && ls -l` - if you see the directory contents, you're ready to go

As of v2.0, the command-line options have been greatly simplified, using interactive prompts.

To trigger the tool, simply run:

```bash
./extract
```
or
```bash
/path/to/extract
```
That's it!  The screen will prompt and guide you through the process.

Successful image generated:

![Flashable Firmware Generated](./img/flashable.png)


Image mis-match (built-in error checking):

![Image Mis-Match](./img/invalid-img.png)


Pre-packaged zip ready to go (the screenshot is focused on the *extracted* image, showing that all of the OxygenOS stuff is gone and only the desired update remains):

![Generated Image](./img/generated-files.png)

***

## Updating Your Device
Once **extract** completes, locate your flashable zip (the terminal will tell you the path!)

- Connect your device to your computer via USB and run `adb devices` from your terminal to initiate a connection
- In TWRP Recovery (if you aren't in recovery yet: [instructions to get there](boot-into-recovery.md)):


1. Advanced
2. Sideload
3. TWRP will prompt sideloading has started; from your terminal, run:
```bash
adb sideload firmware-update-oneplus5T.zip
```

That's it.

Note: If you tried to update before flashing the firmware, you may get an "update failed" notification once Lineage boots back up.  Simply go to Settings > Update > Install again and let it do it's thing.  It should then finish the upgrade with the latest Oneplus firmware.

## Current Firmware
As of August 8, 2019 the latest firmware is **9.0.8**

### Caveats
No responsibility to anyone but yourself if you brick your device!

## Author & License
Forked concept originally by [Koenkk](https://github.com/Koenkk/firmware_oneplus); his commits licensed under public domain (no license)

Code by [Angela](https://github.com/angela-d) licensed under GPL2
