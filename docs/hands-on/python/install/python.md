---
title: Pythonインストール
description: WindowsでPythonを使えるようにする
template: add_comment.html
revision_date: 2022年8月27日
---

# Python環境構築

Windows10を対象に環境構築の記録を残す。

ゴールは「シンプルなPythonインストールをベースにVSCodeでプログラム作成できる環境」。何度か作ってきたために、無駄に昔話が挟まれる。

## インストール準備

### 32bitと64bit

[Python公式のダウンロードサイト](https://www.python.org/downloads/)からインストーラを入手する。

昔はライブラリが対応しているとかしていないとかで、32bitを選んでいたが、それほどマイナーなものは使わないので素直にOSと同じ64bit版をインストールする。

### 仮想環境

OSにパッケージを直接インストールすると、常に「全部入り」の環境を使って開発することになり、パッケージ間の競合とか開発・実行環境を再現する際に「何をインストールすればよいのかわからない」状況になり得る。特に後者が嫌。これを避けるためにも、何かを作る際にはクリーンな「仮想環境」を準備して、インストールからそれ専用に行っていくのが通常の流れ。

少し前は`pipenv`を使って仮想環境を作っていたが、最近はPython本体に同梱されている`venv`を使うのが主流らしい。

- [2021年のPython仮想環境〜いまやvenvを使わない理由はありません〜](https://qiita.com/toast-uz/items/f2df428f75b049b1d172)
- [Pipenv をやめて venv を使いだした話](https://blog.uedder.com/2020_python_develop_envirionment.html)

主流にしたがっておけば、情報も多いし間違いない。

## インストール

### Python

公式のインストーラを実行するだけ。`Customize installation`を選択して、`Add Python to environment variables`をチェックした。

インストール後のバージョン確認。

```cmd
C:\Users\root>python --version
Python 3.10.5
```

## pipのupgrade

`pip`はPythonで使うパッケージ管理のためのソフトウェア。Pythonと同時にインストールされるが、最新のものより古いことが通常。

今回`pip`のlistを表示させたところ、warningが出た。

```cmd
C:\WINDOWS\system32>pip list
Package    Version
---------- -------
pip        22.0.4
setuptools 58.1.0
WARNING: You are using pip version 22.0.4; however, version 22.1.2 is available.
You should consider upgrading via the 'D:\Program Files\Program\Python310\python.exe -m pip install --upgrade pip' command.
```

指示されたとおりにupgradeする。（インストール場所が通常と異なりDドライブなのは個人的環境の都合）

```cmd
C:\WINDOWS\system32>cd /d D:\Program Files\Program\Python310

D:\Program Files\Program\Python310>python.exe -m pip install --upgrade pip
Requirement already satisfied: pip in d:\program files\program\python310\lib\site-packages (22.0.4)
Collecting pip
  Downloading pip-22.1.2-py3-none-any.whl (2.1 MB)
     ---------------------------------------- 2.1/2.1 MB 22.7 MB/s eta 0:00:00
Installing collected packages: pip
  Attempting uninstall: pip
    Found existing installation: pip 22.0.4
    Uninstalling pip-22.0.4:
      Successfully uninstalled pip-22.0.4
Successfully installed pip-22.1.2
```

warningが出なくなる。

```cmd
D:\Program Files\Program\Python310>pip list
Package    Version
---------- -------
pip        22.1.2
setuptools 58.1.0
```
