[![CircleCI](https://circleci.com/gh/andrewrothstein/ansible-hub.svg?style=svg)](https://circleci.com/gh/andrewrothstein/ansible-hub)
andrewrothstein.hub
===================

Installs GitHub's [hub](https://github.com/github/hub)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.hub
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
