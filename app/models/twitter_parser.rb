class Twitter_parser

  attr_accessor :client, :info_array

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET']
      config.access_token        = ENV['TWITTER_TOKEN']
      config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
    end
    @info_array = []
  end

  def find_followers
    @client.followers.each do |person|
      @info_array << { :name => person.name,
      :username => person.username, 
      :bio => person.description,
      :followers_count => person.followers_count,
      :location => person.location }
    end
  end

  def sort_followers(array, hash_key)
    array.sort_by {|hash| hash[hash_key]}.reverse
  end

  def parse_and_sort
    find_followers
    sort_followers(info_array, :followers_count)
  end
end