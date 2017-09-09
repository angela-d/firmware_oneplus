#!/bin/bash

# Create out directories
mkdir -p out/oneplus_3
mkdir -p out/oneplus_3t
mkdir -p out/oneplus_5

# Generate ZIP for OnePlus 3T
echo "Packaging OnePlus 3T firmware..."
cd oneplus3t && zip -9 -r ../out/oneplus_3t/oneplus3t_oxygenos_open_beta_12_firmware.zip *
cd ..

# Generate ZIP for OnePlus 3
echo "Packaging OnePlus 3 firmware..."
cd oneplus3 && zip -9 -r ../out/oneplus_3/oneplus3_oxygenos_open_beta_21_firmware.zip *
cd ..

# Generate ZIP for OnePlus 5
echo "Packaging OnePlus 5 firmware"
cd oneplus5 && zip -9 -r ../out/oneplus_5/oneplus_5_oxygenos_4.5.10_firmware.zip *
cd ..
