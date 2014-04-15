===========
Mechanize
===========

mechanizeモジュールを読み込む
===============================

::

  require 'mechanize'


mechanizeエージェントを作成
=============================

::

  agent = Mechanize.new


User-Agentを設定する
======================

::

  agent.user_agent_alias = 'Mac Safari'
  or
  agent.user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_2) AppleWebKit/534.51.22 (KHTML, like Gecko) Version/5.1.1 Safari/534.51.22'


ページの情報を取得する
========================

::

  url = 'http://www.yahoo.co.jp'
  page = agent.get(url)


リンクをクリックする
======================

::

  traffic_page = page.link_with(:text => '路線').click


フォームに入力する
====================

::

  target_page = traffic_page.form_with(:name => 'search') do |form|
    form.from = '大井町'
    form.to = '上野'
  end.submit

  login_form = top_page.form_with(:name => 'LOGIN')
  login_form['LOGIN:ID']= loginid
  login_form['LOGIN:PASSWORD'] = password
  login_button = login_form.button_with(:name => 'LOGIN:BUTTON')
  top_page = agent.submit(login_form, login_button)


HTMLソースを表示する
======================

::

  puts target_page.body
  or
  puts agent.page.body


ページのタイトルを表示する
============================

::

  puts target_page.title
  or
  puts agent.page.title


ページのURLを表示する
=======================

::

  puts target_page.uri	
  or
  puts agent.page.uri


指定した名前の最初のタグの属性/テキストを表示する
===================================================

::

  puts target_page.at('frame')['src']
	
  puts target_page.at('p').inner_text
  or
  puts agent.page.at('p').inner_text


指定した名前のすべてのタグの属性/テキストを表示する
=====================================================

::

  target_page.search('frame').each do |frame|
    puts frame['src']
  end

  target_page.search('p').each do |p|
    puts p.inner_text
  end


HTTPSでアクセスする
=====================

::

  agent.verify_mode = OpenSSL::SSL::VERIFY_NONE


TLSv1でアクセスする場合
-------------------------

::

  agent.ssl_version = 'TLSv1'


