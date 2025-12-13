#!/usr/bin/env bash

if [[ -x "$(command -v apt)" ]]; then
	apt install --yes ansible-core git
fi

if [[ -x "$(command -v dnf)" ]]; then
	dnf --assumeyes ansible-core git
fi

if [[ -x "$(command -v ansible-galaxy)" ]]; then
	ansible-galaxy collection install --upgrade community.general
else
	echo "Installation failed."
	exit 1
fi
