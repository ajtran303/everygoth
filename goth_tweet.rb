require "twitter"
require "open-uri"

class GothBot

  def tweet
    twitter.update(next_tweet)
  end

  private

  # Constant
  URL = "https://gist.githubusercontent.com/ajtran303/d7a6ae0c957d2dc53dc17dab688d4db3/raw"

  # ||= operator: return the @variable unless nil
  # if @variable == nil, assign it a value
  # like a weird getter method

  def goth_array
    @goth_array ||= open(URL).read.split("\n")
  end

  def most_recent_tweet
    twitter.user_timeline("everygoth").first
  end

  # .text method from Twitter API
  def goth_index
    @goth_index ||= goth_array.find_index(most_recent_tweet.text)
  end

  def next_tweet
    goth_array[goth_index+1]
  end

  def twitter
    @twitter ||= Twitter::REST::Client.new do |config|
     config.consumer_key = ENV["consumer_key"]
     config.consumer_secret = ENV["consumer_secret"]
     config.access_token = ENV["access_token"]
     config.access_token_secret = ENV["access_token_secret"]
    end
  end

end

# Only execute on even-numbered hours
exit unless ((Time.now.hour % 2) == 0)

GothBot.new.tweet
