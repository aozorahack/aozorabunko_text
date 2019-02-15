# aozorabunko_text

青空文庫( https://www.aozora.gr.jp )のサーバ内にある青空文庫形式のテキストのみをテキスト形式のまま集めたものです。

個別にzipコマンドで展開したりせずにすべてのテキストが読めます。

## ダウンロード

[Download ZIP](https://github.com/aozorahack/aozorabunko_text/archive/master.zip) (200MB以上)

zip形式のファイルで欲しい場合、上記からダウンロードできます。
なお、テキストファイルは全てcardsディレクトリ内にあります。それ以外は無視してください。

gitレポジトリの取得については、ふつうのgithub repoなので git pullで持ってきてもらえばいいのですが、履歴不要で最新版だけ欲しい場合は以下のコマンドの方が早いはずです。

```console
$ git clone --depth 1 https://github.com/aozorahack/aozorabunko_text.git
```

### 個別のテキストファイルへのアクセス

個別のファイルには、`https://aozorahack.org/aozorabunko_text/cards/000081/files/45630_txt_23610/45630_txt_23610.txt`のようなURLでアクセスできます（ただし、HTTPレスポンスヘッダのContent-Typeは`text/plain; charset=utf-8`なのにファイルはShift_JISなので、ブラウザでは文字化けします）。

※ zip内のテキストファイルはタイトルに合わせたファイル名が命名されているのですが、このレポジトリではzipファイル名に合わせたファイル名にしています。
例えば、`cards/000005/files/53194_ruby_44732.zip`内のテキストなら`cards/000005/files/53194_ruby_44732/53194_ruby_44732.txt`というパスになります。

異なるファイル名にしているのは、元のテキストファイル名は「作家別作品一覧CSV」などにも書かれておらず、確認するにはzipファイルの中身を見ないといけないためです。

## 動作のしくみ

https://github.com/aozorabunko/aozorabunko の中身を取得して、cardsディレクトリ内にあるzipファイルの中からtxtファイルを取り出して、同様の階層のディレクトリ内に保存しています。

動作はCircleCI上で行っており、1日1回バッチで動作します。

## 権利関係

cardsディレクトリ内のファイルについては、[「青空文庫収録ファイルの取り扱い規準」](https://www.aozora.gr.jp/guide/kijyunn.html)の元でご利用ください。

著作権保護期間が終了しておらず、クリエイティブ・コモンズ・ライセンス等による許諾の元で再配布されているファイルも含まれています。ご注意ください。
