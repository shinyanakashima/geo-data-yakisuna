#!/bin/bash

tippecanoe \
  -o yakisuna.pmtiles \
  --read-parallel \
  --force \
  $(for f in yakisuna_*.ndjson; do echo --layer=${f%.ndjson} $f; done)

