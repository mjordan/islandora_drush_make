#!/usr/bin/env bash

# Run this after running drush make --yes --no-core --contrib-destination=. islandora.drush.make
# to install all the modules downloaded by that file.

# Usage:
# ./enable_islandora_modules.sh /path/to/islandora.drush.make /path/to/your/modules/directory

# The path to the islandora.drush.make file.
MAKEFILE=$1
# The absolute path to the destination sites/all/modules or sites/default/modules that
# drush make cloned the module repos into.
DESTDIR=$2

# Extract all the module directory names from the islandora makefile.
MODULES=$(grep -v "^;" $MAKEFILE | grep -oh "projects\[[A-Za-z_]*\]" | sed "s/projects\[//" | sed "s/\]/ /" | tr -d '\n')

# Loop through all the modules cloned by the drush makefile.
for MODULE in $MODULES
do
  # Get the module's full path.
  MODULEPATH=$DESTDIR/$MODULE
  # For each module, find all its .info files (there could be more than one).
  INFOFILES=$(find $MODULEPATH -name '*.info' -exec basename {} \;)
  for INFOFILE in $INFOFILES
  do
    # Remove the .info extension and hand off the .info file basename to drush to enable.
    INFOFILE=$(echo $INFOFILE | sed "s/\.info$//")
    drush --yes en $INFOFILE
  done
done
