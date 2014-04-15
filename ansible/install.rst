=========
Install
=========

Install
=========

::

  pip install ansible
  ansible --version


Execute
=========

::

  echo "127.0.0.1" > hosts

  # Execute ping module
  ansible all -i hosts -m ping -k
