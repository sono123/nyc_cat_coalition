class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def require_user
    if admin_signed_in?
      true
    else
      redirect_to new_admin_session_path, notice: "You must be logged in to access that page."
    end
  end

  def after_sign_in_path_for(resource)
    "/admin"
  end

end
