class StaticPagesController < ApplicationController
  def home
  end

  def top_followers
    @twitteruser = current_user
    @twitter_parsed = @twitteruser.twitter_data.page(params[:page]).per(10)
    @loop = @twitter_parsed.length 
    @instauser = current_user
    @instagram_parsed = @instauser.instagram_data.page(params[:page]).per(10)
    #debugger
    #puts 'hi'
  end

  def create
  	@user = current_user
  end

end
