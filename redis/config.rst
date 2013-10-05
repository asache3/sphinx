===============
Configuration
===============

redis.conf
============

daemonize
----------

* yesにすると、daemonとしてバックグラウンドで起動する
* デフォルトはno


logfile
---------

* ログファイルの指定
* daemonize yesにした場合は、ログファイルのパスを指定する
* BGSAVE中などI/O負荷が高い状況では、ログの書き出しがブロックされるせいで応答が遅くなることがある


save
------

* 定期的にメモリ上のデータをディスクに書き出すようにする
* save 300 10と指定すると300秒(5分)間に10回以上の更新系コマンドを処理した場合のみ、ディスクに書き出す

::

  save 900     1
  save 300    10
  save  60 10000
  # saveディレクティブは複数個指定できる

  save ""
  # ディスク書き出しは行われなくなる


rdbcompression
---------------

* yesと指定するとデータをディスクに書き出すときにLZF圧縮をかける
* デフォルトはyes
* 圧縮処理にCPU負荷がかかったり、圧縮処理に時間がかかってディスクへの書き出しが完了するまでの時間が長くなったりする可能性がある


rename-command
----------------

* コマンド名の変更ができる
* 危険なコマンドをうっかり実行してしまわないように

::

  rename-command FLUSHALL hontou-ni-keshite-iino
  rename-command FLUSHALL ""


maxclients
-----------

* 同時接続可能なクライアント数の上限値
* デフォルトは10000


maxmemory
-----------

* データ保存領域として使うメモリ量
* 単位はバイト


maxmemory-policy
------------------

* データが増えてmaxmemoryに達した場合に、redis-serverがどういう挙動をするか

.. csv-table::
  :header-rows: 1

  設定値,挙動
  volatilu-lru,デフォルト。expireが設定されているキーを対象にLRU(Least Recently Used)で削除対象を決定
  allkeys-lru,すべてのキーを対象にLRUで削除対象を決定
  volatile-random,expireが設定されているキーを対象にランダムで削除対象を決定
  allkeys-random,すべてのキーを対象にランダムで削除対象を決定
  volatile-ttl,expireが設定されているキーを対象に期限切れが近い順に削除対象を決定
  noeviction,いっぱいになっても削除しない。書き込みしようとするとエラーになる


appendonly
------------

* yesを指定すると、更新系のコマンドを逐次ファイルに書きだすようになる
* AOF(Append Only File)


appendfsync
------------

* バッファキャッシュ上にあるAOFをディスクに書き出すタイミング
* システムコールfsync(2)

.. csv-table::
  :header-rows: 1

  設定値,挙動
  always,毎回fsyncする。ディスク書き込みの信頼性は増すが、性能劣化する可能性が高い
  everysec,デフォルト。毎秒fsyncする
  no,Redisはfsyncせず、ディスクへのフラッシュはOSに任せる


auto-aof-rewrite-percentage, auto-aof-rewrite-min-size
-------------------------------------------------------

* 前回書き換えたときのファイルサイズのauto-aof-rewrite-percentageで指定した割合まで、現在のAOFが大きくなったときに、書き換え処理が実行される
* auto-aof-rewrite-min-sizeで指定したファイルサイズ以下の場合は、書き換えは実行されない


slowlog-log-slower-than
-------------------------

* 指定した時間(マイクロ秒)以上かかったコマンドをスローログとして記録する


activerehashing
-----------------

* 定期的にハッシュのリハッシュを行う
* 高い性能が求められる場合は、noにする


include
---------

* 外部ファイルを設定ファイルの一部として読み込む


slaveof [masterip] [masterport]
---------------------------------

* マスター/スレーブ間のレプリケーションを設定する

slave-read-only
-----------------

* スレーブを読み込み専用にする
* デフォルトはyes

Reference
==========

* `Redisでログの書き込みがblockを引き起こす <http://d.hatena.ne.jp/sfujiwara/20121205/1354685957>`__
* `Redisを使う時は見積の二倍の容量必要だよね、という話 <http://qiita.com/y_matsuwitter/items/4fc43a53d2ac24f7783e>`__
