class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller? 


  rescue_from CanCan::AccessDenied do |exception|
  	flash[:danger] = "Accés Interdit"
  	redirect_back fallback_location: { action: "show"}
  end

  

  protected

  def configure_permitted_parameters
    parameters = %i(first_name last_name age job avatar email password current_password password_confirmation)
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(parameters) }
  end

  def after_sign_in_path_for(resource)
    home_profil_path
  end

  def after_update_path_for(resource)
    home_profil_path
  end
end
