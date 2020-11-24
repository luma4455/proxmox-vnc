#!/bin/bash

C="/etc/pve/local/qemu-server/"
C+=$1
C+=".conf"

if grep -F "args: -vnc 0.0.0.0:" $C > /dev/null
then

O="VNC is for this VM Enabled! VNC Port: "
O+=$(expr $( echo $(grep -F "args: -vnc 0.0.0.0:" $C) | sed s/"args: -vnc 0.0.0.0:"//) + 5900)

  echo $O
else
  echo "VNC is for this VM Disabled!"
fi
