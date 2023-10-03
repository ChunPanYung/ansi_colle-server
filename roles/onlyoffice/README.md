onlyoffice
=========

Install onlyoffice with Podman

Requirements
------------

- podman

Role Variables
--------------

Requires the following variables from `ansi_colle.server.podman`:
```
podman_data
podman_config
```

Dependencies
------------

`ansi_colle.server.podman`

Example Playbook
----------------
```
- hosts: servers
  roles:
     - { role: ansi_colle.server.onlyoffice }
```
