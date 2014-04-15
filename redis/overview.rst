=============
Overview
=============

Redisとは
===========

* インメモリKVS(Key-Value Store)
* Salvatore SanfilippoとPieter Noordhuisを中心に開発
* C言語で実装されている
* 2009年リリース


KVSの特徴
===========

* Keyに対応した値(Value)を格納するデータストア
* MYSQLやPostgreSQLといったRDBMSと違い、スキーマ(テーブル定義)がない
* SQLのような複雑な問い合わせができない反面、より高いパフォーマンスが期待できる


Redisの特徴
=============
* 5種類のデータ型

  * String
  * List
  * Set
  * Hash
  * Sorted Set

* インメモリで高速化 + ディスクに書き出しで永続化

  * スナップショット
  * 追記専用ファイル

* レプリケーション対応
* Pub/Sub対応
