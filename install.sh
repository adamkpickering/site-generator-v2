#!/bin/sh

echo "Installing necessary packages..."
sudo apt install makepp -y
sudo apt install markdown -y
sudo apt install python3 -y
sudo apt install tidy -y
sudo apt install rsync -y
echo "Done.\n"

echo "Configuring src/standard_defs.mk..."
echo "GET_NAVIGATION = $(realpath ./get_navigation.py)" > src/standard_defs.mk
echo "TOP_HTML = $(realpath templates/top.html)" >> src/standard_defs.mk
echo "BOTTOM_HTML = $(realpath templates/bottom.html)" >> src/standard_defs.mk
echo "TIDY_CONFIG = $(realpath ./tidy.config)" >> src/standard_defs.mk
echo "Done."
