#!/usr/bin/env python3
import pytest

@pytest.mark.ansible
class TestAnsible:
    def test_ansible(self, host):
        ansible = host.package("ansible")
        assert ansible.is_installed
