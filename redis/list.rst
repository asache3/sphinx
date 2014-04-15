======
List
======

リストの右端に値を追加する(RPUSH)
===================================

::

  RPUSH key-name value [value ...]
  RPUSH list-key last


リストの左端に値を追加する(LPUSH)
===================================

::

  LPUSH key-name value [value ...]
  LPUSH list-key first


リストの右端の要素を削除して返す(RPOP)
========================================

::

  RPOP key-name
  RPOP list-key


リストの左端の要素を削除して返す(LPOP)
========================================

::

  LPOP key-name
  LPOP list-key


指定したオフセット位置の要素を返す(LINDEX)
============================================

::

  LINDEX key-name offset
  LINDEX list-key 1


startからendまでの要素を返す(LRANGE)
======================================

::

  LRANGE key-name start end
  LRANGE list-key 0 -1


startからendまでの要素だけが含まれるようにリストを切り詰める(LTRIM)
=====================================================================

::

  LTRIM key-name start end
  LTRIM list-key 2 -1
