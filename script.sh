#!/bin/bash

set -e

# get data!
cd extensions-data-collector
source .ve/bin/activate
python cli.py
cd ..

# temp show output
ls -al extensions-data-collector/output_dir
