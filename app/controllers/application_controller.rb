class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def authenticate_chanel!
  	redirect_to root_path, notice: "No eres un Youtubers" unless user_signed_in? && current_user.is_chanel? 
  end

  def authenticate_admin!
  	redirect_to root_path, notice: "No eres un admin" unless user_signed_in? && current_user.is_admin? 
  end
end
