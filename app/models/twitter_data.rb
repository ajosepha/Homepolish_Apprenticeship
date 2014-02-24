class TwitterData < ActiveRecord::Base

  attr_accessible :name, :username, :bio, :location, :followers_count

  def self.create_with_twitter(current_user)
    twitter_parser = TwitterParser.new(current_user)
    data = twitter_parser.parse_and_sort
    data.each do |datum|
      d = TwitterData.new(datum)
      d.save
    end
  end

end