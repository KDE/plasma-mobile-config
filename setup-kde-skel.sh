#!/bin/sh
# This script will be started by startactive. In case of a previous
# installation the setup will be skipt.


if [ -d "${HOME}/.kde/share/config/plasma-device-appletsrc" ]; then  
   echo "${HOME}/.kde/share/config/plasma-device-appletsrc already exists, will not overwrite"
else
   # Copy the /etc/skel
   cp -auR /etc/skel/.kde ${HOME}
fi
