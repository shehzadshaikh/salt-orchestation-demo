{% from "python/map.jinja" import python with context %}

include:
  - base

pip:
  pkg.installed:
    - name: {{ python.pip_pkg }}

python-dev-packages:
  pkg.installed:
    - pkgs: {{ python.dev_pkgs }}
    - require:
      - pkg: pip

virtualenv:
  pip.installed:
    - require:
      - pkg: pip

python34:
  pkg.installed

python34-devel:
  pkg.installed
