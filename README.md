# aozorabunko_text

青空文庫( https://www.aozora.gr.jp )のサーバ内にある青空文庫形式のテキストのみをアーカイブしたものです。
個別にzipコマンドで展開したりせずにテキストが読めます。

## 動作のしくみ

https://github.com/aozorabunko/aozorabunko の中身を取得して、cardsディレクトリ内にあるzipファイルの中からtxtファイルを取り出して、同様の階層のディレクトリ内に保存しています。

動作はCircleCI上で行っており、1日1回バッチで動作します。

## 最新版の取得方法

ふつうのgithub repoなので、git pullで持ってきてもらえばいいのですが、履歴不要で最新版だけ欲しい場合は以下のコマンドの方が早いはずです。

```console
$ git clone --depth 1 https://github.com/takahashim/aozorabunko_text.git
```


