#!/bin/bash

echo "Building Maltego Entities"
python3 build-stix-entities.py
echo "Processing icons"
python3 build-icons.py
echo "Generate .mtz"
cd mtz
zip -q -r ../output/entities.mtz ./Entities ./EntityCategories ./Icons
cd ../