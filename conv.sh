#!/bin/bash

tippecanoe \
  -o yakisuna.pmtiles \
  --read-parallel \
  -r1 \
  --force \
  --no-feature-limit \
  --no-tile-size-limit \
  --minimum-zoom=4 \
  --maximum-zoom=20 \
  $(for f in yakisuna_*.ndjson; do
      city=$(echo $f | sed 's/yakisuna_//' | sed 's/[0-9]*\.ndjson//')
      echo --named-layer=${city}:$f
    done)

