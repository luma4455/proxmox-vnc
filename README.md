# proxmox-vnc
Enable VNC on Proxmox

You can use this Scripts to Enable / Disable VNC.
Currently no VNC password can be set because this has to be done in the console of the VM itself.

The port must be over 5900 due to proxmox limitations.

Oneliner Installer:
curl https://download.lumaxit.de/.LT-Script_Repo/Proxmox/vnc/installer.sh | bash

Oneline Deinstaller:
curl https://download.lumaxit.de/.LT-Script_Repo/Proxmox/vnc/uninstall.sh | bash

./enablevnc.sh VMID PORT      -- Enable VNC for VM
./disablevnc.sh VMID          -- Disable VNC for VM
./checkvnc.sh VMID            -- Check if VNC is active for the VM
./setvnclayout.sh VMID KEYBOARD_LAYOUT     -- Sets the keyboard layout for the VNC session (default: en)
