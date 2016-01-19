class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @test = 'teststring'
  end

private

  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    rescue ActiveRecord::RecordNotFound => e
    @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id]) # Use find_by_id to get nil instead of an error if user doesn't exist
  end

  helper_method :current_user

  def authorize
    # redirect_to signin_url, alert: "Not authorized" if current_user.nil?
  end

end
