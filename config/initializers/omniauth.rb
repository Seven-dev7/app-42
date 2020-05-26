Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['twitter_api_public'], ENV['twitter_api_secret'], ENV['twitter_api_tokken'], ENV['twitter_api_tokken_secret']
end