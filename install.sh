#!/bin/bash

set -e

echo "Get or update extensions-data-collector repo"
if [ -d "extensions-data-collector/repo" ]; then
  cd extensions-data-collector/reop
  git pull
  cd ../..
else
  git clone https://github.com/open-contracting/extensions-data-collector.git extensions-data-collector/repo
fi

echo "Get or update extension-explorer repo"
if [ -d "extension-explorer/repo" ]; then
  cd extension-explorer/repo
  git pull
  cd ../..
else
  git clone https://github.com/open-contracting/extension-explorer.git extension-explorer/repo
fi

echo "Create and update virtualenv for extensions-data-collector repo"
cd extensions-data-collector/repo
if [ ! -d ".ve" ]; then
  virtualenv .ve -p python3
fi
source .ve/bin/activate
pip install -r requirements.txt
deactivate
cd ../..

echo "Create and update virtualenv for extension-explorer repo"
cd extension-explorer/repo
if [ ! -d ".ve" ]; then
  virtualenv .ve -p python3
fi
source .ve/bin/activate
pip install -r requirements.txt
deactivate
cd ../..
