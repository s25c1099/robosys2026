# robosys2026
このリポジトリはロボットシステム学の授業で利用するリポジトリです。いくつかのソフトウェアパッケージを公開しています。  

# plusコマンド
![test](https://github.com/s25c1099/robosys2026/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足すコマンドです。

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境
- Ubuntu 24.04 LTS  
## LICENSE
・このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布および使用が許可されます。  
・このパッケージのコードは、下記のスライド（CC BY-SA 4.0 by Taro Suzuki）のものを、  
  本人の許可を得て自身の著作としたものです。  
     https://github.com/tarolab-cit/lectures/tree/main/robosys2026  
・© 2026 Madoka Hori

# searchコマンド
![test](https://github.com/s25c1099/robosys2026/actions/workflows/test_search.yml/badge.svg)

標準入力から特定の文字が含まれる行を取り出すコマンドです。

## 使用方法
コマンドライン引数で指定したキーワードを、標準入力から受け取った文章の中から検索するプログラムです。  
コマンド`python3 search 検索ワード`で実行されます。  
文章を標準入力から与える場合はパイプを使用します。  
```
### Pythonを検索キーワードとする場合
$echo -e "I like Python.\nI like Java.\nPython is fun.\nI study C." | python3 search Python
```
実行結果は  
I like Python.  
Python is fun  
となります。

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境
- Ubuntu 24.04 LTS  
## LICENSE
・このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布および使用が許可されます。  
・© 2026 Madoka Hori
## 謝辞・参照
本プログラムの作成にあたり、Python Software Foundationが提供するPython標準ライブラリのドキュメントを参考にしました。
・Python標準ライブラリ
https://docs.python.org/ja/3/library/index.html
（参照日：2026年11月23日）
