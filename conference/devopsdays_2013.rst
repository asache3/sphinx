=======================
DevOpsDays Tokyo 2013
=======================


Making Operations Visible
===========================

http://www.slideshare.net/nickgsuperstar/making-operations-visible-dev-opsdays-tokyo-2013key

* DevOps

  * Communication

* Invisible things aren't valued

* Dev

  * プログラムが本番環境でどう動いているの？
  * 現場でなんでこんなに問題起きてるの？
  * 運用って1日何してるの？

* Business

  * 何で月末にならないとレポート上がってこないの？
  * 先週のリリースって何か意味があるの？

* Ops

  * 何で面倒を押し付けるの？
  * そもそも会社は何をやっているの？


* 会社の情報を見える化する

* よく聞く言い訳

  * アラートシステムを見える化している
  * どうせ他の人には分からない

    * 我々vs 彼らという対立は良くない

  * 壊してしまう

    * 壊したい人はいないから、もっと信用するべき

  * これはあなたの仕事ではない

* One Machine, One Day, One Person Challenge!

* Graphite

  * Flexible input and output
  * Rest API
    * HTML dashboard

* StatsD

  * Send application metrics
  * UDP packet

* "StatsD + Graphite" or "fluentd + GrowForecast"

プラットフォームベンダーから見たオープンクラウド設計と運用のポイント
=======================================================================

* クラウドは、"Always Ready, Never Finished"

* Crowbar

  * Zero Touch Cloud Installer

* Open Standard Cloud Association(OSCA)


Sensu Intro
=============

http://slides.sensuapp.org/

* オープンソースの監視フレームワーク
* Sonian
* Nagiosで問題が出ていた

* Inspiration

  * Unix Philosophy

    * 複数のものを1つにまとめる

  * Japanese Culture

    * 竹、強いけどしなやか

* Design

  * Automatic client registration
  * 既存のnagios checkを活用できる
  * Handle network interruptions
  * Drive with CM(Chef)
  * Easy to scale out
  * API

* どの言語でも書ける

* マシンの集まりcollectionに対してチェックできる

  * 1:N

* Check Standalone Mode

  * NagiosのPassive Check

* Architecture

  * RabbitMQ
  * Redis
  * Server
  * API
  * Written in Ruby

* Sensu & Chef

  * Cookbooks

* PagerDuty

  * サーバーで異常が発生したら電話をかけてくれる

* Nagios

  * 静的なシステム向け
  * 動的に増減すると設定を変える必要がある
  * 自動的に登録することが必要

* 運用ツールにRubyが普及している

  * Chef、Puppet

* Twilio


インフラ屋から見たEnterprise DevOPSのための基盤
=============================================================

* 運用を意識した開発が必要
* アプリのためにインフラがある
* 仮想化は重要な要素技術
* 今を知ることで次が見えてくる

* Yammer

  * 後から入ってきた人でも分かる

* データインサイトとDevOpsをつなぐ

* System Center Operations Manager


5min demonstration(Cookpad)
=============================

* 2008

  * Ruby, Rails

* 2011

  * amazon web services

* 2012

  * GitHub Enterprise

* Ruby製のミドルウェアが増えている

* Arproxy

  * ActiveRecordとDBの間のproxy

  * slow queryのログを出す

* chanko


5min demonstration(VMware)
============================

* VMware NSX
* ネットワーク仮想化

  * ソフトウェアでネットワーク環境を再現
  * 仮想ポートの数が物理ポートの数が上回った

* vForum


Puppet eco system
===================

* Puppet 3

  * speed 100%
  * scalablity 2.7x

* Geppetto

  * EclipseベースのIDE

* Gatling

  * Scalaで作られたストレスツール

* Hiera functions

  * hierarchical key-value store
  * JSON、YAML
  * 設定を外に出せる

    * puppetコードがきれいになる、見てすぐ分かる
    * 簡単に変更できる

* PuppetDB

  * PostgreSQL
  * Clojure

    * fast, multi-core

  * JVM
  * AST-based query syntax
  * API for defining API

* MCollective

  * orchestration
  * 特定のノードを操作できる
  * Rubyで特殊な操作を定義できる
  * Subcollectivesでグループ分けできる

    * ネットワークの負荷分散できる

* Ruby Integration
* Puppet forge


DevOps at Gengo: The Ways and Hows
====================================

* 本番

  * chefのprovisioning

* ローカル

  * vagrantのconfigを
  * chef-solo

* Client library language

  * Ruby
  * Python
  * PHP
  * Java


Ops for Everyone
==================

https://speakerdeck.com/johndbritton/ops-for-everyone

* BOXEN

  * 開発者のマシンを管理している
  * 初日からビルドできる

    * Install xcode command line tools
    * curl -s https://examole.com/script.boxen.sh > ...
    * 1h ~ 4 hr
    * Rubies, Nodes
    * boxen github, githubのプロジェクトを使う
    * project manifest

      * puppet

    * personal manifest

  * It's just puppet for your mac.


* HUBOT

  * チャットルームのメッセージによって作業を行う
  * Share the terminal
  * Chatops

    * 運用作業を見える化する
    * 新人が学ぶことができる

  * /ci build
  * /config
  * /deploy
  * /hosts
  * /pupet run
  * /graph me

    * graphite

  * /fitbit me
  * /new hire me
  * /animate me

* zsh

  * oh-my-zsh

* Push Notification


DevOps時代のインフラ構築と開発プロセス
========================================

http://www.slideshare.net/devsumi/2013a1devops

* DevOpsの基礎

  * 10 deploys per day
  * Velocity 2009でFlickerでの発表
  * Dev and Ops

* ビジネスの成果を継続的に達成できるようにお互いに協力し合う
* チームの能力を最大限発揮する

* 銀の弾丸ではない、哲学
* プロセスやフレームワークではない
* 現場に合わせて実装する

* 文化によるサポート

  * お互いの尊重
  * お互いの信頼
  * 失敗に対する健全な態度
  * お互いを非難しない

* ツールによるサポート

* DevOps=自動化ではない

  * 自動化はリスク低減とアジリティ向上に貢献する

* Design for Failure

  * すべてのものは壊れる前提で構築する

* 疎結合アーキテクチャー

* Infrastructure as code

* 共通理解

  * 完了の定義を作り、何をもって出荷可能かを定める

* Deployments at Amazon.com

  * 平均11.6秒ごとにデプロイ
  * 1時間で最大1079回のデプロイ
  * 1回で平均1万台のホストへデプロイ
  * 最大で3万台のホストへ同時にデプロイ

* ビジネスのメトリクス

  * 事業によって変わる


迷ったら健全な方　
==================

https://speakerdeck.com/mirakui/being-healthy-dev-and-ops-in-cookpad

* @mirakui
* Cookpadで特売情報
* 40%のエンジニアが新規事業に携わっている

* エンジニア60人、運用エンジニア5人
* 組織が大きくなってきた
* DevとOpsの関係が社会性を持ってきた

* 5~10 per/day

* デプロイは開発者が行う

  * CIをパスしたリビジョンのみ
  * Capistrano
  * InfraMonitor

* リリース日が今日だった

* Opsが権威的にならない

  * 偉そうになると承認フローが増加する
  * 個人のオーナーシップが減衰
  * 承認を通すテクニックや政治が発生
  * コミュニケーションで解決できる部分はギリギリまでそうするべき

* プロダクトのリリースをOpsが止めない

* Opsが完璧さを求めない

  * fixされたソースコードでパフォーマンスを計測する

* 組織や顧客にとって価値を提供できているか

* 求めるべきは「完璧さ」ではなく「健全さ」

* 時にはOpsにとって不利益な選択を許す

  * アーキテクチャとリリース日
  * サーバー費と人件費

* Devのことをよく理解する

  * Opsがサービスの最新のソースコードを追う
  * 議論を追う

* Opsに求められるもの

  * ソースコードを読めないOpsは採らない
  * ミドルウェアのソースコードを読める

* Devに求めるもの

  * サーバーサイドのセンスを磨く

    * そのコードに大量アクセスがきたときの想定ができるか

* 組織、ビジネス、ユーザーにとって健全な方を選ぶ


Effective Monitoring with StatsD
==================================

https://speakerdeck.com/alq/effective-monitoring-with-statsd

* OODAループ

  * Observe
  * Orient
  * Decide
  * Act

* 分かりやすさを重視
* ClientはUDPでサーバーと通信

* statsD
* client library
* graphite

