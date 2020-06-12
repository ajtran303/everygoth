require "./lib/dictionary_reader"
require "twitter"

twitter = Twitter::REST::Client.new do |config|
 config.consumer_key = ENV["consumer_key"]
 config.consumer_secret = ENV["consumer_secret"]
 config.access_token = ENV["access_token"]
 config.access_token_secret = ENV["access_token_secret"]
end

most_recent_tweet = twitter.user_timeline("everygoth").first.text

next_word = DictionaryReader.next_word(most_recent_tweet[5..-1])

twitter.update("goth #{next_word}")
