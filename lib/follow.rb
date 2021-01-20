require 'twitter'
require 'dotenv'

Dotenv.load('../.env')

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

i = 0
while i < 25
  client.search("#bonjour_monde", lang: "fr", result_type: "recent")
  id = client.user("#bonjour_monde")
  client.follow("#bonjour_monde")
  i += 1
end