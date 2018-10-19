#!/bin/sh
# Resets the tree back to the way it was after running
# ./install.sh, minus your changes to the source.

rm -rf site/
cd src/
makepp clean
