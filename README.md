# Ansible Collection - ansi_colle.server

Collection of role for configuring home server.

## Requirements

[Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

Run this playbook from `bash`:

```bash
export ANSIBLE_CALLBACK_RESULT_FORMAT=yaml  # yaml output format instead of json
export ANSIBLE_VERBOSITY=1  # Set verbosity, default is 0

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
