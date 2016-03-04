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

res = client.gachi_now
res.body
# => {"result"=>
#   [{"maps"=>["マサバ海峡大橋", "マヒマヒリゾート＆スパ"],
#     "rule"=>"ガチエリア",
#     "end"=>"2016-03-04T23:00:00",
#     "start"=>"2016-03-04T19:00:00"}]}

res.body['rules']
# => ["ガチエリア", "ガチホコ", "ガチヤグラ"]

res = client.weapons
# => {"weapons"=>
#   [".52ガロン",
#    ".52ガロンデコ",
#    ".96ガロン",
#    ".96ガロンデコ",
#    "14式竹筒銃・乙",
#    .
#    .
#    .
#   ]}
```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
