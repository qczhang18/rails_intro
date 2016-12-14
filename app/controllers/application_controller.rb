class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # in the future try decent exposure for better style
  #expose(:current_user){ sessions[:user_id] ? @current_user ||= User.find(session[:user_id]) : nil  }
  #expose(:user_signed_in?){ current_user ? true : false }

  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      nil
    end
  end

  helper_method :user_signed_in?
  def user_signed_in?
    if current_user
      return true
    else
      return false
    end
  end
end
