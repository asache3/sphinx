=========
Install
=========

Install for ElasticSearch
===========================

::

  gem install fluent-plugin-elasticsearch

  mkdir /usr/local/fluentd
  cd /usr/local/fluentd

  vim fluentd.conf

  # Execute as daemon
  fluentd -d /var/run/fluentd.pid -c /usr/local/fluentd/fluentd.conf 


Configuration
===============

::

  <source>
      type tail
      format apache2
      path /var/log/httpd/access_log
      tag apache.access
      pos_file /var/log/td-agent/httpd-access_log.pos
  </source>

  <match apache.access>
      type elasticsearch
      host <IP Adress>
      port <Port Number>
      type_name access_log
      logstash_format true
      flush_interval 1
  </match>
