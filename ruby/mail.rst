======
Mail
======

Code Sample
=============

::

  # coding: utf-8

  require 'mail'

  mail_config = {
    :address	=> "127.0.0.1",
    :port 	=> 25
  }

  to_address = 'aaa@example.com, bbb@example.com'

  Mail.defaults do
    delivery_method :smtp, mail_config
  end

  mail = Mail.new
  mail.from = 'ccc@example.com'
  mail.to = to_address
  mail.charset = 'utf-8'
  mail.subject = 'タイトル'
  mail.body = '本文'

  mail.deliver 
