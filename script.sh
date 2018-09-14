#!/bin/bash

set -e

# get data!
cd extensions-data-collector
source .ve/bin/activate
python cli.py
cd ..

# freeze site
cd extension-explorer
source .ve/bin/activate
python freeze.py
cd ..

# temp show output
find extension-explorer/extension_explorer/build
