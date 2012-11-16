---
layout: page
title: "Railsメモ"
date: 2012-05-27 21:57
comments: true
sharing: true
footer: true
---

rails new `app-name` -d mysql -T

# rspec and cucumber

https://github.com/rspec/rspec-rails
https://github.com/sporkrb/spork-rails
https://github.com/cucumber/cucumber-rails/

`Gemfile`

group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem "spork-rails"
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end

`cmd`
rails g rspec:install
spock rspec --bootstrap
rails g cucumber:install --spork

Spork.preforkの中に Sprok 実行開始時の処理を
Spork.each_runの中に rspec の毎回実行時の処理を記述

# factory_girl

gem 'factory_girl_rails'


spec_helperに

  FactoryGirl.factories.clear
  FactoryGirl.reload


# helperのテスト

rspec-tag_matchersが良さそう

https://github.com/dcuddeback/rspec-tag_matchers
http://rdoc.info/github/dcuddeback/rspec-tag_matchers/master/RSpec/TagMatchers

# 一般適なrspecのテンプレ

describe クラス名 do
  describe メソッド名 do
    subject { オブジェクト.メソッド }
    context オブジェクトの状態 do
      let(オブジェクト) { オブジェクト作成 }
      context 引数 do
        let(引数) {  }
        it { }
      end
    end
  end
end

# 入門書を越えて

Railsは入門書の読み終えてからもなかなかとっつきにくい部分が多いです。
一番代みたいドキュメントは公式の[Rails Guide](http://guides.rubyonrails.org/)です。英語ですが、なんとなくわかる部分も多いので、ときどき眺めるようにすると良いです。
最近は `ri` も高速に動作し、情報も多いので参考になります。
