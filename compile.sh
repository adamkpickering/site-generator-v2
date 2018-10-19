#!/bin/sh
# Compile the website and copy the relevant files to site/.

cd src/
makepp
cd ..
# do man rsync and search for "--itemize-changes" to understand output
rsync -r -i --prune-empty-dirs --include-from=rsync_include.config --exclude='*' src/ site/
