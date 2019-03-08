require 'sinatra'
require 'sinatra/reloader'
require 'rss'

get '/' do
  @hatena = RSS::Parser.parse("http://b.hatena.ne.jp/hotentry.rss")
  @nhk = RSS::Parser.parse("https://www3.nhk.or.jp/rss/news/cat0.xml")
  erb :index
end
# ページにアクセスすると、ハテナに比べてnhkがズレた見た目になってしまうのはなぜ？
