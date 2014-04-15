==========
Geocoder
==========

Install
=========

::

  gem install geocoder


文字列から住所を取得する
==========================

::

 require 'geocoder'

 Geocoder.configure(:language => :ja, :units => :km) 
 Geocoder.address("東京タワー")


緯度経度から住所へ変換する(リバースジオコーディング)
======================================================

::

  Geocoder.address("39.70150773,141.13672256")


IPアドレスの場所を取得する
============================

::

  Geocoder.address("106.187.50.98")


GoogleMapsAPIの結果を取得する
===============================

::

  Geocoder.search("東京タワー")
  Geocoder.search("39.70150773,141.13672256")


二点間の距離を計算する
========================

::

  t1 = Geocoder.search("東京タワー")[0].geometry['location'].values.join(',')
  t2 = Geocoder.search("東京スカイツリー")[0].geometry['location'].values.join(',')
  Geocoder::Calculations.distance_between(t1, t2)


Reference
===========

* `Ruby Geocoder <http://www.rubygeocoder.com>`__
* `もぎゃろぐ <http://blog.mogya.com/2013/10/ruby-geocoder.html>`__
