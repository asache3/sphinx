=========
Install
=========

Install ElasticSearch
=======================

::

  # Install JDK
  cd /usr/local/src/
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.0.tar.gz

  tar zxvf elasticsearch-1.1.0.tar.gz
  mv elasticsearch-1.1.0 /usr/local/
  cd /usr/local
  ln -s /usr/local/elasticsearch-1.1.0 elasticsearch

  cd /usr/local/elasticsearch
  mkdir data logs

  cd config
  vim elasticsearch.yml

  ----------
  index.number_of_shards: 1
  index.number_of_replicas: 0
  path.data: /usr/local/elasticsearch/data
  path.logs: /usr/local/elasticsearch/logs
  http.port: 8080
  ----------

  /usr/local/elasticsearch/bin/elasticsearch


Install Kibana
================

::

  cd /usr/local/src/
  wget https://download.elasticsearch.org/kibana/kibana/kibana-3.0.0.tar.gz

  tar zxvf kibana-3.0.0.tar.gz
  mv kibana-3.0.0 /usr/local

  cd /usr/local
  ln -s /usr/local/kibana-3.0.0 kibana

  cd /usr/local/kibana
  vim config.js

  ----------
  elasticsearch: "http://"+window.location.hostname+":8080",
  ----------

  # Config Apache
