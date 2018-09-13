#!/bin/bash

set -e

# Get or update extensions-data-collector repo
if [ -d "extensions-data-collector" ]; then
  cd extensions-data-collector
  git pull
  cd ..
else
  git clone https://github.com/open-contracting/extensions-data-collector.git extensions-data-collector
fi

# Get or update extension-explorer repo
if [ -d "extension-explorer" ]; then
  cd extension-explorer
  git pull
  cd ..
else
  git clone https://github.com/open-contracting/extension-explorer.git extension-explorer
fi

# Create and update virtualenv for extensions-data-collector repo
cd extensions-data-collector
if [ ! -d ".ve" ]; then
  virtualenv .ve -p python3
fi
source .ve/bin/activate
pip install -r requirements.txt
deactivate
cd ..
