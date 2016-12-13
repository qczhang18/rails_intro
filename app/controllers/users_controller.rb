class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end

  def destroy
    User.destroy(params[:id])
    flash[:notice] = "User account is deleted"
  end

  def new
    @user = User.new
  end

  def create
    if User.create(user_params)
      flash[:notice] = "user created successfully!"
    else
      flash.now[:error] = "Please fix your errors!"
      render "new"
    end
  end

end
