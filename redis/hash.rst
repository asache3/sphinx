======
Hash
======

値を格納する(HSET)
====================

::

 HSET key-name key value
 HSET hash-key sub-key1 value1


値を複数格納する(HMSET)
=========================

::

  HMSET key-name key value [key value ...]
  HMSET hash-key k1 v1 k2 v2 k3 v3


値を取得する(HGET)
====================

::

  HGET key-name key
  HGET hash-key sub-key1


値を複数取得する(HMGET)
=========================

::

  HMGET key-name key [key ...]
  HMGET hash-key k2 k3


全てのキーと値をを取得する(HGETALL)
=====================================

::

  HGETALL key-name
  HGETALL hash-key


すべてのキーを取得する(HKEYS)
===============================

::

  HKEYS key-name


すべての値を取得する(HVALS)
=============================

::

  HVALS key-name


キーがハッシュに含まれていれば削除する(HDEL)
==============================================

::

  HDEL key-name key [key ...]
  HDEL hash-key sub-key2


ハッシュの数を返す(HLEN)
==========================

::

  HLEN key-name
  HLEN hash-key


キーがハッシュに含まれているかどうかを返す(HEXISTS)
=====================================================

::

  HEXISTS key-name key
  HEXISTS hash-key2 num


値に整数を加える(HINCRBY)
===========================

::

  HINCRBY key-name key increment


値に浮動小数点数を加える(HINCRBYFLOAT)
========================================

::

  HINCRBYFLOAT key-name key increment
