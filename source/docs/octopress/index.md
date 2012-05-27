---
layout: page
title: "Octopressについて"
date: 2012-05-27 20:17
comments: true
sharing: true
footer: true
---

このサイトは[Octopress](http://octopress.org/)を利用して構築しています。
更新の際に役立つように調べたことのメモを残しておきます。

# コードを書きたい


コードを書きたい場合は github や pandoc で使えるようなバッククオートを3つでくくる方法が使えます。 角括弧の部分は省略することができます。

    ``` [language] [title] [url] [link text]
    コード
    ```

[http://octopress.org/docs/plugins/backtick-codeblock/](http://octopress.org/docs/plugins/backtick-codeblock/)

他にも外部ファイルからコードを取り込む方法やGistから取得する方法もあります。

    {{ "{% include_code [title] [lang:language] path/to/file" }} %}

[http://octopress.org/docs/plugins/include-code/](http://octopress.org/docs/plugins/include-code/)

    {{ "{% gist gist-id" }} %}

[http://octopress.org/docs/plugins/gist-tag/](http://octopress.org/docs/plugins/gist-tag/)

その他のプラグインの情報は[ここに](http://octopress.org/docs/blogging/plugins/)あります。

# Octopressの構造

Octopress は [GitHub Pages](https://github.com/mojombo/jekyll) の上で利用できる [Jekyll](https://github.com/mojombo/jekyll) の上に作成されています。(Gemfileをみれば gem 'jekyll' の記述があります。)
Octopressがデプロイする流れは sourecs -> public -> _deploy とファイルを生成します。
soruces -> public を作成する際には jekyll コマンドが使用されます。 _deploy ディレクトリは 専用の git リポジトリがあり、公開用のブランチを作成するのに使用されます。

Github Page を Jekyll で作成した場合、html を作成するのは githubの役割になりますが、Octopressを使う場合はローカルで生成することになるのでこの時にいろいろすることができることが特徴になってくるのではないかと思います。

# ページを ディレクトリ名/index.md で作成する理由

`rake preview` で表示した場合は気になりませんが、githubなどでホスティングする場合のURLで .html がないURLにしたい場合に都合が良いです。
