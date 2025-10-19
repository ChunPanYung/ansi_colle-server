# Ansible Collection - ansi_colle.server

Collection of role for configuring home server.

## Requirements

[Installing Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

To run this playbook from `bash`:

```bash
export ANSIBLE_STDOUT_CALLBACK=yaml
export ANSIBLE_LOAD_CALLBACK_PLUGINS=True

ansible-galaxy collection install \
  git+https://github.com/ChunPanYung/ansi_colle-server.git

# Run this to update every time
ansible-playbook ansi_colle.server.install

# Run this after update, it will ask you sudo password
ansible-playbook ansi_colle.server.site --connection=local \
  --inventory 127.0.0.1, --ask-become-pass --verbose
```

## Development

To setup development environment: `uv sync && source .venv/bin/activate`
