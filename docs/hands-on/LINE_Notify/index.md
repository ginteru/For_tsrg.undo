---
title: LINE Notify-はじめに
description: LINE Notify-ページの扉
template: main.html
hide:
    - toc
revision_date: 2022年9月3日
---

## 経緯

メールで必要な通知が来るあるサービスがある。ほぼリアルタイムで把握したい内容だが、普段スマートフォンへのメール受信をリアルタイムで監視していないため、気をつけていないと、気づくまでにタイムラグがある[^1]。

LINEで通知してもらえれば把握しやすくなるのでは、と考えた。LINEには `LINE Notify` というサービスがあり、手軽にLINEへ投稿できるらしい。

[^1]:   そもそもメールはリアルタイム性を求めた仕組みではないようにも思う。

常時、自宅で動いているCentOS上のPythonから、定期的にメールチェックして、LINEへ投稿する仕組みを作ってみる[^2]。

[^2]:   Google App Script(GAS)を使った連携を紹介されている方がいる（例えば、[Gmailの新着通知をLINEで受け取る by Google App Script](https://note.com/yuut6/n/nb3528b53ddfa)）。メールボックスをGmailでまかない、その中のGASを使った方が環境準備が不用なのでメリットがある。ただ、GASを改めて学ぶのが億劫で見送り。

## Contents

- [概要と要件](overview.md)  
    作るモノの概要と要件
- [Hands-on](handson.md)  
    実勢に手を動かして作ってみる
