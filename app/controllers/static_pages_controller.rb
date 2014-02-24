class StaticPagesController < ApplicationController
  def home
  end

  def social_media
    # debugger
    @user = current_user
    @twitter_parsed = @user.twitter_data
  end

  def create
  	@user = current_user
  end

end
