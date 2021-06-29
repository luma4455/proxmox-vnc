# Proxmox-VNC
Enable VNC on Proxmox

You can use this Scripts to Enable / Disable VNC.
Currently no VNC password can be set because this has to be done in the console of the VM itself.

 The port must be over 5900 due to proxmox limitations.

 Notice that when activating / deactivating / changing layout the VM is restarted

# Commands:

enablevnc VMID PORT      -- Enable VNC for VM


disablevnc VMID PORT         -- Disable VNC for VM


checkvnc VMID            -- Check if VNC is active for the VM


setvnclayout VMID KEYBOARD_LAYOUT     -- Sets the keyboard layout for the VNC session (default: en)
