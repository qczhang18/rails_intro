class HomeController < ApplicationController
  def index
    @tweets = Tweet.all
   # @users = User.all
  end

  def search
    puts params.inspect
    @search_users = User.where('lower(fname) = ?', params[:query].downcase)
  end

end
