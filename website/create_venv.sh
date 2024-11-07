#!/usr/bin/env bash

cd "$(dirname "$0")"

echo "Creating virual environment for website with $(python3 -V)..."

# Create a virtual environment for the website
python3 -m venv .venv
source .venv/bin/activate

echo "Installing requirements..."
pip install -r requirements.txt

echo "Done!"
echo "Run 'source .venv/bin/activate' to activate the virtual environment and 'deactivate' to deactivate it."
