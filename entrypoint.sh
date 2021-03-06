#!/bin/bash
export LD_LIBRARY_PATH="/usr/lib/kicad-nightly/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH"
export PYTHONPATH="/usr/lib/kicad-nightly/lib/python3/dist-packages/:$PYTHONPATH"

git describe --tags || git fetch --tags
python3 /usr/bin/plot_gerbers.py $1 $(git describe --tags || git rev-parse --short HEAD)
