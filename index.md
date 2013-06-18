---
layout: default
---

{% include hiroshimarb/info %}

<small>[もう少し具体的に](/about.html)</small>

最近の記事
================================================================================

{% for post in site.posts limit:3 %}
* [{{ post.title }}]({{ post.url }})
{% endfor %}

コンテンツ
================================================================================

- [hiroshima.rbのサイトを更新しよう](/docs/HowToUpdateWebSite/)

ロゴについて
================================================================================

ロゴの作成には [milligramme](http://www.milligramme.cc/) さんにお願いしました。
<code>Ruby</code>に広島の県花である<code>もみじ</code>を加えています。

<img src="https://github.com/milligramme/hiroshimarb_logo/raw/master/hiroshimarb-square.png" width="320" height="320" />

リンク
================================================================================

* [Github](https://github.com/hiroshimarb)
* [メーリングリスト](https://groups.google.com/forum/?hl=ja&fromgroups#!forum/hiroshimarb)
* [旧ウェブサイト](https://sites.google.com/site/hiroshimarb/)

<img src="https://github.com/milligramme/hiroshimarb_logo/raw/master/hiroshimarb-horizontal.png" width="500" height="100" />
