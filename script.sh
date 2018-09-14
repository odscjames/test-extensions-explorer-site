#!/bin/bash

set -e

# get data!
cd extensions-data-collector/repo
source .ve/bin/activate
python cli.py
cd ../..

# move data
cp extensions-data-collector/repo/output_dir/data.json extension-explorer/repo/extension_explorer/data.json

# freeze site
cd extension-explorer/repo
source .ve/bin/activate
python freeze.py
cd ../..

# temp show output
find extension-explorer/repo/extension_explorer/build
