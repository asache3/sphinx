======================
SSH without password
======================

Client
========

::

  ssh-keygen -t rsa

  scp ~/.ssh/id_rsa.pub [server name]:~/


Server
========

::

  ls -ld ~/.ssh
  (.sshディレクトリがない場合)
  mkdir ~/.ssh
  chmod 700 ~/.ssh

  ls -l ~/.ssh/authorized_keys
  (authorized_keysファイルがない場合)
  touch ~/.ssh/authorized_keys
  chmod 600 ~/.ssh/authorized_keys

  cat id_rsa.pub >> ~/ssh/authorized_keys
  rm id_rsa.pub
