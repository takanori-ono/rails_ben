class UsersController < ApplicationController
  before_action :already_login?, only: [:new, :create]
  before_action :login?, only: :show
  def new
    @user = User.new
  end

  def create
    user = User.new(users_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path, notice: "You have succesfully signed in."
    else
      render :new 
    end
  end

  def show
  end

  private
  def users_params
    params.require(:user).permit(:email, :password, :password_confimation)
  end

end
