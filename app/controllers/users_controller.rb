class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user_id
      cookies[:auth_token] = @user.auth_token
      flash[:notice] = "Thank you for signing up!"
      redirect_to links_path  
    else
      flash[:error] = "User sign up failed."
      render "new"
    end
  end

private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
