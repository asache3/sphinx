=========
Network
=========

ping
======

::

  ping [IP address] -l [size]


DHCP
======

::

  dhclient # IPアドレスを割り当てる
  dhclient -r # IPアドレスを解放する


netstat
=========

* LISTENしているポートを探す

::

  netstat -lanput
  lsof -i:[port]


* 統計情報を取得する

::

  netstat -e # Windows
  netstat -e 60 # 1分おきに取得する
  netstat -s # Linux


帯域制御
==========

* 項目の表示

::

  tc qdisc show dev eth1


* 遅延の設定

::

  tc qdisc add[change] dev eth1 root netem delay 200ms


* パケットロスの設定

::

  tc qdisc add[change] dev eth1 root netem loss 20%


* 重複パケットの設定

::

  tc qdisc add[change] dev eth1 root netem duplicate 20%


* 設定の削除

::

  tc qdisc del dev eth1 root netem
