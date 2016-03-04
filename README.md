# [SplAPI](http://splapi.retrorocket.biz)

[splapi - スプラトゥーンのステージ情報がとれるやつ](http://docs.splapi.apiary.io/)のRuby実装のClient gem。
各APIのパラメーターは上記の公式リファレンスを参照してください。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'splapi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install splapi

## Usage
```rb
require 'splapi'

client = SplAPI::Client.new
res = client.gachi_rules
res.body['rules']
# => ["ガチエリア", "ガチホコ", "ガチヤグラ"]
```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
