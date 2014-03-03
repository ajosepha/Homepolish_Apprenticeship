class TwitterDatum < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :username, :bio, :location, :followers_count, :user_id
  validates_uniqueness_of :username, scope: :user_id

  def create_with_twitter(current_user)
    twitter_parser = TwitterParser.new(current_user)
    data = twitter_parser.parse_and_sort
    data.each do |datum|
      d = TwitterDatum.new(datum)
      d.user_id = current_user.id 
      d.save 
    end
  end

end