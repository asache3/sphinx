============
Sorted Set
============

指定したスコアを持つメンバーを追加する(ZADD)
==============================================

::

  ZADD key-name score member [score member ...]
  ZADD zset-key a 3 b 2 c 1


メンバーを削除する(ZREM)
==========================

::

  ZREM key-name member [member ...]
  ZREM zset-key b


メンバー数を返す(ZCARD)
=========================

::

  ZCARD key-name
  ZCARD zset-key


メンバーに数を加える(ZINCRBY)
===============================

::

  ZINCRBY key-name member increment
  ZINCRBY zset-key c 3


スコアが最小値と最大値の間になっているメンバーの数を返す(ZCOUNT)
==================================================================

::

  ZCOUNT key-name min max
  ZCOUNT zset-key 0 3


メンバーの位置を返す(ZRANK/ZREVRANK)
======================================

::

  ZRANK key-name member
  ZRANK zset-key c

  ZREVRANK key-name member


ランクがstartからstopまでのメンバーを返す(ZRANGE/ZREVRANGE)
=============================================================

::

  ZRANGE key-name start stop [WITHSCORES]
  ZRANGE zset-key 0 -1 withscores

  ZREVRANGE key-name start stop [WITHSCORES]


ランクがstartからstopまでのメンバーを削除する(ZREMRANGEBYRANK)
================================================================

::

  ZREMRANGEBYRANK key-name start stop


スコアがminからmaxまでのメンバーを返す(ZRANGEBYSCORE/ZREVRANGEBYSCORE)
========================================================================

::

  ZRANGEBYSCORE key min max [WITHSCORES] [LIMIT offset count]
  ZREVRANGEBYSCORE key max min [WITHSCORES] [LIMIT offset count]


スコアがminからmaxまでのメンバーを削除する(ZREMRANGEBYSCORE)
==============================================================

::

  ZREMRANGEBYSCORE key-name min max


積集合を取る(ZINTERSTORE)
===========================

::

  ZINTERSTORE dest-key key-1 key-2 [key ...] [WEIGHTS weight [weight ...]] [AGGREGATE SUM|MIN|MAX]


和集合を取る(ZUNIONSTORE)
===========================

::

  ZUNIONSTORE dest-key key-1 key-2 [key ...] [WEIGHTS weight [weight ...]] [AGGREGATE SUM|MIN|MAX]
