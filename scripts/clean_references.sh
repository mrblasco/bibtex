#!/bin/bash

sed 's/\(.*\)}$/\1\n}/g' "$1" | \
  sed -E $'/^\t*(date-(added|modified)|bdsk-.*)[[:space:]]*=[[:space:]]*[{"].*[}"],?/d'
