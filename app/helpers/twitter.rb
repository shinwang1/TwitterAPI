def twitter_auth
  @client = Twitter::REST::Client.new do |config|
    config.consumer_key = ENV['CONSUMER_KEY']
    config.consumer_secret = ENV['CONSUMER_SECRET']
    config.access_token = ENV['ACCESS_TOKEN']
    config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
  end

  @client_v = TweetStream::Client.new do |config|
    config.consumer_key = ENV['CONSUMER_KEY']
    config.consumer_secret = ENV['CONSUMER_SECRET']
    config.access_token = ENV['ACCESS_TOKEN']
    config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
  end 
end

def tweet(user_tweet)
  twitter_auth
  @client.update(user_tweet)
end

def tweet_search(terms)
  twitter_auth
  tweet_array = []

  @client.search(terms, result_type: "recent").take(10).each do |tweet|
    tweet_array << tweet.text
  end

  tweet_array
end

def get_timeline(username)
  twitter_auth
  data = @client.user_timeline("username")
  p data
end

# def stream_tweet(user_input)
#   topics = user_input.split(",")
#   @client.filter(track: topics.join(",")) do |object|
#     puts object.text if object.is_a?(Twitter::Tweet)
#   end
# end

# def stream_word(status)
#   @client_v.userstream do |status|
#     puts status.text
#   end
# end