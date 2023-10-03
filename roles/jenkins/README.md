jenkins
=========

Create jenkins container with podman, starts containers on bootup.

Requirements
------------

NONE

Role Variables
--------------

NONE

Dependencies
------------

`role: ansi_colle.linux.podman`

Example Playbook
----------------

```
- name: Using this role
  hosts: all
  tasks:
    - name: Using this role
      ansible.builtin.include_role:
        name: ansi_colle.server.jenkins
```
