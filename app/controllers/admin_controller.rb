class AdminController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user! rescue redirect_to new_user_session_path
  before_action :is_admin

  protected

   def is_admin
     redirect_to root_path unless current_user.is_admin?
   end

end
