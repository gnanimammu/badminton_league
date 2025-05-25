class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path  # redirects to login page
    # or to redirect to signup page:
    # new_user_registration_path
  end
end
