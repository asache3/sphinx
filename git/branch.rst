========
branch
========

トピックブランチ(短期間だけ使う一時的なブランチ)を作る
========================================================

::

  git checkout -b [branch name]
  git checkout -b modify-README
  git branch


ブランチを削除する
====================

::

  git branch -d [branch name]
  git branch -d modify-README

  git branch -D [branch name] # 変更をマージしていなくてもブランチを削除する
