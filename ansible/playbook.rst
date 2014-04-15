==========
Playbook
==========

Execute
=========

::

  # Syntax Check
  ansible-playbook [playbook yml file] -i [hosts file] -k --syntax-check

  # List tasks
  ansible-playbook [playbook yml file] -i [hosts file] -k --list-tasks

  # dry-run
  ansible-playbook [playbook yml file] -i [hosts file] -k --check

  # Execute
  ansible-playbook [playbook yml file] -i [hosts file] -k 


Task
======

Host and User
-----------------

::

  ---
  - hosts: webuservers
    remote_user: root

  ---
  - hosts: webservers
    remote_user: yourname
    sudo: yes
    sudo_user: postgres


Service
---------

::

  tasks:
    - name: make sure apache is running
      service: name=httpd state=running


Shell
-------

::

  tasks:
  - name: disable selinux
    command: /sbin/setenforce 0

  tasks:
  - name: run this command and ignore the result
    shell: /usr/bin/somecommand
    ignore_errors: True


File
------

::

  tasks:
  - name: Copy ansible inventory file to client
    copy: src=/etc/ansible/hosts dest=/etc/ansible/hosts
            owner=root group=root mode=0644


Variable
----------

::

  vars:
    http_port: 80
    max_clients: 200


Template
----------

::

  tasks:
  - name: create a virtual host file for {{ vhost }}
    template: src=somefile.j2 dest=/etc/httpd/conf.d/{{ vhost }}


Notify
--------

::

  template: src=template.j2 dest=/etc/foo.conf
  notify:
     - restart memcached
     - restart apache


Condition
===========

::

  tasks:
  - name: "shutdown Debian flavored systems"
    command: /sbin/shutdown -t now
    when: ansible_os_family == "Debian"

  tasks:
  - command: /bin/false
    register: result
    ignore_errors: True
  - command: /bin/something
    when: result|failed
  - command: /bin/something_else
    when: result|success
  - command: /bin/still/something_else
    when: result|skipped


Play  Example
===============

Apache
--------

::

  ---
  - hosts: all
    remote_user: root
    tasks:
      - name: httpd is installed
        yum: name=httpd state=installed

      - name: httpd is running and enabled
        service: name=httpd state=running enabled=yes

::

  ---
  - hosts: all
    remote_user: root
    tasks:
      - name: httpd package is installed
        yum: name={{ item }} state=installed
        with_items:
          - httpd
          - httpd-devel

      - name: httpd is running and enabled
        service: name=httpd state=running enabled=yes

