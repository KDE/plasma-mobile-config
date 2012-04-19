#!/bin/sh
# This script will be started by startactive. In case of an previous
# installation the setup will be skipt.


if [ -d "${HOME}/.kde/share/apps/nepomuk" ]; then  
   echo "${HOME}/.kde/share/apps/nepomuk already exists, will not overwrite"
elif [ -e "/usr/share/contour/do_not_use_nepomuk_intro_database" ]; then
   echo "will not copy the database"
else
   # Copy nepomuk database
   cp -auR /etc/skel/.kde ${HOME}
fi
