onlyoffice
=========

Install onlyoffice with Podman

Requirements
------------

- ansi_colle.server.config: it will define `secret_dir` variable.
- ansi_colle.server.podman: make sure podman is installed.

Role Variables
--------------

`"{{ secret_dir }}/onlyoffice_jwt_secret"` must be defined.
It is a REST API keys used to connect onlyoffice server to another application.

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
