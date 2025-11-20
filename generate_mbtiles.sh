#!/bin/bash

tippecanoe \
  -o yakisuna.mbtiles \
  -zg \
  --extend-zooms-if-still-dropping \
  --read-parallel \
  --force \
  --no-feature-limit \
  --no-tile-size-limit \
  yakisuna_eniwa2024.ndgeojson \
  yakisuna_muroran2024.ndgeojson \
  yakisuna_sapporo2018.ndgeojson
