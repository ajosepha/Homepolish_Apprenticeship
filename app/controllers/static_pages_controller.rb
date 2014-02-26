class StaticPagesController < ApplicationController
  def home
  end

  def social_media
    @twitteruser = current_user
    @twitter_parsed = @twitteruser.twitter_data
    @instauser = current_user
    @instagram_parsed = @instauser.instagram_data
    #debugger
    #puts 'hi'
  end

  def create
  	@user = current_user
  end

end
