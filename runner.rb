require "./lib/names_generator"
require "./lib/twitter_service"

twitter = TwitterService.connect
twitter.update("goth #{NamesGenerator.sample.downcase}")
