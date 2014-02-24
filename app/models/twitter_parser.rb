class TwitterParser 

  attr_accessor :client, :info_array, :user_obj

  def initialize(user_obj)
    @user_obj = user_obj
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "XCAPDhcDecC718Sj7Yj1A"
      config.consumer_secret     = "gmF6EpFSj2hyRh30aHWj6rwTOFXswDFqZJ9ZTobO34"
      config.access_token        = user_obj.authentications.find_by_provider("twitter").token
      config.access_token_secret = user_obj.authentications.find_by_provider("twitter").secret
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