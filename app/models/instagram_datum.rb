class InstagramDatum < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :username, :bio, :followers_count, :instagram_id, :location

  def create_with_instagram(current_user)
    instagram_parser = InstagramParser.new(current_user)
    data = instagram_parser.parse_and_sort
    data.each do |datum|
      d = InstagramDatum.new(datum)
      d.user_id = current_user.id
      d.save
    end
  end
end