#!/bin/bash

# Remove old zips
rm -rf *.zip

# Generate ZIP for OnePlus 3T
cd oneplus3t && zip -r ../OnePlus3T_4.0.2_firmware.zip *
cd ..

# Generate ZIP for OnePlus 3
cd oneplus3 && zip -r ../OnePlus3_4.0.2_firmware.zip *
