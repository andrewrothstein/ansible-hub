andrewrothstein.hub
===================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-hub.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-hub)

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
