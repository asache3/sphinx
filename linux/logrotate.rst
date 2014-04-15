===========
logrotate
===========

Configuration Option
======================

.. csv-table::
  :header-rows: 1

  コマンド,内容
  daily/weekly/monthly,ローテーションを日ごと/週ごと/月ごとに行う。デフォルトはdaily
  rotate [num],指定した回数だけローテーションする
  size [filesize],ログファイルが指定したファイルサイズ以上になったらローテーションする
  copytruncate,ログファイルをコピーした後、内容を削除する
  create [permission] [user] [group],ローテーション後に空のログファイルを新規作成する
  nocreate,新しい空のログファイルを作成しない
  delaycompress,ログの圧縮を次回のローテーションまで遅らせる。compressと一緒に指定する。
  compress,ローテーションしたログをgzipで圧縮する
  nocompress,ローテーションしたログを圧縮しない
  ifempty,ログファイルが空でもローテーションする
  notifempty,ログファイルが空ならローテーションしない
  missingok,ログファイルが存在しなくてもエラーを出さずに処理を続行する
  nomissingok,ログファイルが存在しない場合にエラーを出す
  olddir [directory],指定したディレクトリ内にローテーションしたログを格納する
  noolddir,ローテーション対象のログと同じディレクトリにローテーションしたログを格納する


Example
=========

::

  cat /etc/logrotate.d/redis

  /var/log/redis/redis.log {
    weekly
    rotate 10
    copytruncate
    delaycompress
    compress
    notifempty
    missingok
  }


Register logrotate
====================

::

  /usr/sbin/logrotate /etc/logrotate.conf
  cat /var/lib/logrotate.status
  
