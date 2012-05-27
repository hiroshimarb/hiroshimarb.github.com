---
layout: page
title: "hiroshima.rbのサイトを更新しよう"
date: 2012-05-27 18:17
comments: true
sharing: true
footer: true
---

このサイトは [Octopress](http://octopress.org/) を使用して作成されています。
hiroshima.rb のメンバーが本サイトを誰でも更新できるように更新方法を記録しています。Octopress を利用する際にも参考になるかも?

みんなでどんどんRubyのTipsを増やしていきましょう。

ruby 1.9.2 以降が必要になります。rbenvを利用したインストールがおすすめです。

# リポジトリの取得

更新するためにはまず github からデータを取得する必要があります。
作業をするディレクトリで以下のようにします。

``` bash
git clone git@github.com:hiroshimarb/hiroshimarb.github.com.git
cd hiroshimarb.github.com
```

# ページの作成しよう

ページを作成するには所定の位置にファイルを作成するだけですが、`rake`コマンドを利用してコードジェネレートできます。現状では日本語にしないほうがよさそうです。

{% codeblock lang:bash %}
orake new_page[ページ名]
{% endcodeblock %}

zshを使用している場合、うまく動いてくれません。クオートしましょう。

{% codeblock lang:bash %}
rake "new_page[ページ名]"
{% endcodeblock %}

実行をすると
`source/ページ名/index.md` が作成されます。

# ページの記述形式

生成されたファイルには`---`に囲まれた部分にページの情報を記述されています。
ふたつめの`---`の以降にページの内容を記述していきます。この時の形式はファイルの拡張子によって決まり、デフォルトでは[markdown](http://daringfireball.net/projects/markdown/)となっています。

- TODO Markdown以外の形式は何が使えるのかは把握してないので調べる

# プレビューしてみよう

ページを作成したら、どのように表示されるかプレビューしてみましょう。
以下のコマンドでサーバを立ち上げることができます。

``` bash
rake preview
```

サーバはポート 4000 で起動します。[http://localhost:4000](http://localhost:4000)にアクセスしてみましょう。

# ページを公開しよう

ページを作成したら、インターネットに接続している誰もが閲覧できるように公開しましょう。
まずは公開先の設定をしましょう。

``` bash
rake 'setup_github_pages[git@github.com:hiroshimarb/hiroshimarb.github.com.git]'
```

これは一度だけ行えば大丈夫です。

公開には、以下のコマンドを使用します。

```bash
rake gen_deploy
```

作成したページを実際に表示してちゃんと公開されているか確認しましょう。

# 変更をコミットしよう。

ページの公開はできましたが、他の人と更新を共有できるようにcommitしましょう。
`git`の使い方になってしまうので、ここでは簡便に書きます。

``` bash
git add .
git commit -m "更新の内容"
git push
{% endcodeblock %}
```
