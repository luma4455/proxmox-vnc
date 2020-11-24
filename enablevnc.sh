#!/bin/bash

RP=$(expr $2 - 5900)

A="args: -vnc 0.0.0.0:"
A+=$RP

B="Enabled VNC for VM "
B+=$1
B+=" - VNC port is: "
B+=$(expr $RP + 5900)

C=":"
C+=$2

if sudo netstat -tulpn | grep $C > /dev/null
then

echo "Port is in use!"

else
  
echo $A >> /etc/pve/local/qemu-server/$1.conf
echo "Stopping VM to apply VNC Config..."
qm stop $1
sleep 5
echo "Starting VM to apply VNC Config..."
qm start $1
echo $B

fi
