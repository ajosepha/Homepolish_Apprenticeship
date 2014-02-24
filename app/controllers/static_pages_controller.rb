class StaticPagesController < ApplicationController
  def home
  end

  def social_media
  	@user = current_user
  	@name = @user.username
  	@a = TwitterData.new
  	@b = @a.create_with_twitter(@user)
  	@c = TwitterData.find_by_name("@name")
  end

  def create
  	@user = current_user
  end

end
