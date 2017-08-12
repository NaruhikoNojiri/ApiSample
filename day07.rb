require 'net/http'
# レスポンス整形用ライブラリ
require 'json'
uri = URI('http://weather.livedoor.com/forecast/webservice/json/v1?city=130010')
# リクエスト生成からレスポンス取得と整形
response = JSON.load(Net::HTTP.get(uri))

# 結果の任意項目の表示
title   = response['title']
weather = response['forecasts'].first
message = "#{weather['date']}の#{title}は「#{weather['telop']}」です！"
p message
