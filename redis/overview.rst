=============
Overview
=============

Redisとは
===========

* C言語で実装されているKVS(Key-Value Store)
* 2009年リリース
* Salvatore SanfilippoとPieter Noordhuisを中心に開発


KVSの特徴
===========

* Keyに対応した値(Value)を格納するデータストア
* MYSQLやPostgreSQLといったRDBMSと違い、スキーマ(テーブル定義)がない
* SQLのような複雑な問い合わせができない反面、より高いパフォーマンスが期待できる


Redisの特徴
=============
* 多彩な5つのデータ型

  * Strings
  * Lists
  * Sets
  * Hashes
  * Sorted Sets

* インメモリで高速化 + ディスクに書き出しで永続化
* レプリケーション対応
* Pub/Sub対応
* バイナリデータも格納できる
* 豊富なクライアントライブラリ
