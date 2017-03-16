class TwitterPoster
  attr_reader :tweet

  def valid_length?
    @tweet.length <= 140
  end

  def add_tweet(tweet)
    @tweet = tweet
  end
end
