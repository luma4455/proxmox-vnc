#!/bin/bash

RP=$(expr $2 - 5900)

A="args: -vnc 0.0.0.0:"
A+=$RP

C="/etc/pve/local/qemu-server/"
C+=$1
C+=".conf"

B="Disabled VNC for VM "
B+=$1

if [ $RP = $(echo $(grep -F "args: -vnc 0.0.0.0:" $C) | sed s/"args: -vnc 0.0.0.0:"//) ]
then

ex -s +"g/$A/d" -cwq /etc/pve/local/qemu-server/$1.conf

echo "Stopping VM to apply VNC Config..."
qm stop $1
sleep 5
echo "Starting VM to apply VNC Config..."
qm start $1
echo $B

else
  echo "VNC is for this VM Disabled or Used wrong Port!"
fi