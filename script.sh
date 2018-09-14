#!/bin/bash

set -e

# get data!
cd extensions-data-collector
source .ve/bin/activate
python cli.py
cd ..

# move data
cp extensions-data-collector/output_dir/data.json extension-explorer/extension_explorer/data.json

# freeze site
cd extension-explorer
source .ve/bin/activate
python freeze.py
cd ..

# temp show output
find extension-explorer/extension_explorer/build
