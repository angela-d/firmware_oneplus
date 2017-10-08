#!/bin/bash

# Variables
FILE=$1
DEVICE=$2

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
