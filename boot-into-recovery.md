# Boot Into Recovery
Before flashing new firmware, you should boot into recovery.  After a failed upgrade, Lineage typically boots into recovery automatically.
If you've already reboot back into the OS, below are the instructions to get back there:

1. Plug your phone into a PC and open a terminal, run:
```bash
adb devices
```

You should see a device ID appear, with *List of devices attached*.

2. Run:
```bash
adb reboot bootloader
```

You will then boot into the bootloader.  Use your volume key to search for **Recovery**, hit the power key once you're on it.

You should then boot into recovery where you can continue flashing the new firmware.
