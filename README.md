## Ansible Invocation for pi-dagobah

    ansible-playbook --diff -v -i inv/hosts pi-dagobah.yml

This runs the swap and pipenv roles in the pi-dagobah.yml playbook, establishing some basic defaults for a new Pi.

## Targetting a Pi Address

This playbook assumes that you are running Ansible on a remote machine (not your Pi) on the same network.

How does this playbook determine the hostname/address of the target Pi?

It uses `raspberrypi.local`.  If the machine you are running Ansible on happens to be a Mac, then raspberrypi.local will typically resolve to your Pi, granted by the fact that the Bonjour service honors mDNS.

If you need to use a different address for your Pi, simply modify `raspberrypi.local` in `inv/hosts`.
