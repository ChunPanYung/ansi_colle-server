ansible
=========

Install ansible and relevant packages, for control node.  There will be no `ansible-lint`, or any package that helps developer to do testing.

Requirements
------------

NONE

Role Variables
--------------

NONE

Dependencies
------------

NONE

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - name: Playbook name here
      hosts: servers
      tasks:
        - name: Use this role
          ansible.builtin.include_role:
            name: ansi_colle.server.ansible
