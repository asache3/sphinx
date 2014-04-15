=====
Set
=====

* 順序を指定せずに一意な要素を格納する


要素を追加し、新しく追加された要素の数を返す(SADD)
====================================================

::

  SADD key-name item [item ...]
  SADD set-key a b c


要素を削除し、削除された要素の数を返す(SREM)
==============================================

::

  SREM key-name item [item ...]
  SREM set-key c, d


要素数を返す(SCARD)
=====================

::

  SCARD key-name
  SCARD set-key


すべての要素を返す(SMEMBERS)
==============================

::

  SMEMBERS key-name
  SMEMBERS set-key


要素がsource-keyに含まれていたら、削除してdest-keyに追加する(SMOVE)
=========================================================================

::

  SMOVE source-key dest-key item
  SMOVE set-key1 set-key2 a


最初のSETの要素の中で他のどのSETにも含まれていない要素を返す(差集合)(SDIFF)
=============================================================================

::

  SDIFF key-name [key-name ...]
  SDIFF skey1 skey2


最初のSETの要素の中で他のどのSETにも含まれていない要素を集合にまとめる(差集合)(SDIFFSTORE)
============================================================================================

::

  SDIFFSTORE dest-key key-name [key-name ...]
  SDIFFSTORE dkey skey1 skey2


すべてのSETに含まれている要素を返す(積集合)(SINTER)
=====================================================

::

  SINTER key-name [key-name ...]
  SINTER skey1 skey2


すべてのSETに含まれている要素を集合にまとめる(積集合)(SINTERSTORE)
====================================================================

::

  SINTERSTORE dest-key key-name [key-name ...]
  SINTERSTORE dkey skey1 skey2


少なくとも1つのSETに含まれている要素を返す(和集合)(SUNION)
============================================================

::

  SUNION key-name [key-name ...]
  SUNION skey1 skey2


少なくとも1つのSETに含まれている要素を集合にまとめる(和集合)(SUNIONSTORE)
===========================================================================

::

  SUNIONSTORE key-name [key-name ...]
  SUNIONSTORE dkey skey1 skey2
