andrewrothstein.haskell
=========
![Build Status](https://github.com/andrewrothstein/ansible-haskell/actions/workflows/build.yml/badge.svg)

Installs Haskell via [stack](https://docs.haskellstack.org/en/stable/README/)

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
    - andrewrothstein.haskell
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
