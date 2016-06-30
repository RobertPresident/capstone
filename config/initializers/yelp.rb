require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = ENV['yelp_key']
  config.consumer_secret = ENV['consumer_secret']
  config.token = ENV['token']
  config.token_secret = ENV['token_secret']
end




