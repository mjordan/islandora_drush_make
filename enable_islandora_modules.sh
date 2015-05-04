#!/usr/bin/env bash

# Run this after running drush make --yes --no-core --contrib-destination=. islandora.drush.make
# to install all the modules downloaded by that file.

MAKEFILE=$1

# Extract all the module names from the islandora makefile.
MODULES=$(grep -v "^;" $MAKEFILE | grep -oh "projects\[[A-Za-z_]*\]" | sed "s/projects\[//" | sed "s/\]/ /" | tr -d '\n')

# Just echo for now, don't actually run it (pending testing).
echo "drush -yes $MODULES"
