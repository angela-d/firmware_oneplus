#!/bin/bash

# Remove old zips
rm -rf *.zip

# Generate ZIP for OnePlus 3T
cd oneplus3t && zip -r ../OnePlus3T_Open_Beta_11_firmware.zip *
cd ..

# Generate ZIP for OnePlus 3
cd oneplus3 && zip -r ../OnePlus3_Open_Beta_20_firmware.zip *
cd ..

# Generate ZIP for OnePlus 5
cd oneplus5 && zip -9 -r ../oneplus_5_oxygenos_4.5.5_firmware.zip *
cd ..
