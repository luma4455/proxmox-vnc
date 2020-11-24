#!/bin/bash

qm set $1 --keyboard $2

echo "Stopping VM to apply VNC Config..."
qm stop $1
sleep 5
echo "Starting VM to apply VNC Config..."
qm start $1
