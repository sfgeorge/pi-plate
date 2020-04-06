## Ansible Invocation for pi-dagobah

    ansible-playbook --diff -v -i inv/hosts pi-dagobah.yml --become

This runs the swap role in the pi-dagobah.yml playbook, establishing some basic defaults for a new Pi.
