class StaticPagesController < ApplicationController
  def home
  end

  def data
    @data = InstagramParser.new(current_user).parse_and_sort
  end
end
