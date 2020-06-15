require "./lib/dictionary_reader"
require "./lib/gothify"
require "twitter"

include Gothify

twitter = Twitter::REST::Client.new do |config|
 config.consumer_key = ENV["consumer_key"]
 config.consumer_secret = ENV["consumer_secret"]
 config.access_token = ENV["access_token"]
 config.access_token_secret = ENV["access_token_secret"]
end

last_tweet = twitter.user_timeline("everygoth").first.text
last_word = ungothify(last_tweet)
next_word = DictionaryReader.next_word(last_word)
next_tweet = gothify(next_word)

twitter.update(next_tweet)
