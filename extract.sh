#!/bin/bash
# E.G. ./extract.sh <FILE> oneplus5 out/oneplus_5/oneplus_5_oxygenos_4.5.12_firmware.zip

# Variables
FILE=$1
DEVICE=$2
OUT=$3

# Extract ROM
rm -rf tmp
mkdir tmp
unzip $FILE -d tmp

# Remove old firmware
rm -rf $DEVICE/firmware-update/*

# Copy new firmware
cp tmp/firmware-update/* $DEVICE/firmware-update
cp tmp/RADIO/* $DEVICE/firmware-update
rm -rf tmp

# Package new firmware
cd $DEVICE
zip -9 -r ../$OUT *
