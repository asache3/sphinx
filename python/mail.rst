======
Mail
======

Sample Code
=============

::

  # coding:utf-8

  import smtplib
  from email.mime.text import MIMEText
  from email.header import Header

  def send_mail(title, text, fromaddr, toaddr):
      con = smtplib.SMTP()
      cset = 'UTF-8'
      message = MIMEText(text, 'plain')
      #message = MIMEText(html, 'html', cset)
      message['Subject'] = Header(title, cset)
      message['From'] = fromaddr
      message['To'] = toaddr
      con.connect()
      con.sendmail(fromaddr, toaddr, message.as_string())
      con.close()


  if __name__ == '__main__':
      send_mail('Hello', 'World!', hoge@hoge.com, ['foo@foo.com', 'bar@bar.com'])  

