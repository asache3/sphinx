=========
Install
=========

Install Redis
===============

.. code-block:: bash

  VERSION=2.6.16

  cd /usr/local/src
  wget http://download.redis.io/releases/redis-$VERSION.tar.gz
  tar zxvf redis-$VERSION.tar.gz

  cd redis-$VERSION
  make    
  make PREFIX=/usr/local/redis-$VERSION install

  cd /usr/local
  ln -s /usr/local/redis-$VERSION redis
    
  cd /usr/local/src/redis-$VERSION/utils
  ./install_server.sh

  vim /etc/init.d/redis_6379
  # /etc/init.d/redis_6379の変数のコメントアウトを外す

  /etc/init.d/redis_6379 start
  /etc/init.d/redis_6379 stop


Install phpredis
===================

.. code-block:: bash

  git clone https://github.com/nicolasff/phpredis.git

  cd phpredis

  phpize
  ./configure
  make
  make install


php.iniにextension=redis.soを追記する。


.. code-block:: bash

  php -m | grep redis
  # redisが追加されているか確認する
