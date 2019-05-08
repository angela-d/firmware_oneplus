#!/bin/bash

# Variables
FILE=$1
DEVICE=$2
OUT=$3

# pre-check
if [ -z "$1" ];
then
  echo -e "ERROR: You need to specify a source file.  Please see https://github.com/angela-d/firmware-oneplus\nExiting.."
  exit 1
fi

if [ -z "$2" ];
then
  echo -e "ERROR: You need to specify the device model.  Please see https://github.com/angela-d/firmware-oneplus\nExiting.."
  exit 1
fi

if [ -z "$3" ];
then
  echo -e "ERROR: You need to specify the destination filename.  Please see https://github.com/angela-d/firmware-oneplus\nExiting.."
  exit 1
fi

function cleanup() {
  if [ -d "$1" ];
  then
    echo "Cleaning up $1 directory..."
    rm -rf "$1"
  fi
}

# cleanup from previous uses
echo "Preparing cleanup from previous uses of Oneplus firmware extraction..."
cleanup "tmp"

# setup
echo "Setting up..."
mkdir tmp

echo -e "\n\tSTARTING EXTRACTION - Do not interrupt!  It may take a few moments to complete.\n\tThe terminal will prompt when complete.\n"

# Extract ROM
echo "Extracting from the source image..."
unzip "$FILE" -d tmp

# Remove old firmware
cleanup "$DEVICE"/firmware-update/*

# Copy new firmware
echo "Preparing new firmware..."
cp tmp/firmware-update/* "$DEVICE"/firmware-update
echo "Preparing radio..."
cp tmp/RADIO/* "$DEVICE"/firmware-update
cleanup "tmp"

# Package new firmware
cd "$DEVICE" || echo "ERROR: $DEVICE directory not found"
echo "Finalizing flashable zip..."
zip -9 -r ../"$OUT" -- *

echo -e "DONE!\nFind your flashable zip at: $OUT"
