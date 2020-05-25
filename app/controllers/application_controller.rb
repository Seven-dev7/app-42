class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
  	flash[:danger] = "Accés Interdit"
  	redirect_back fallback_location: { action: "show"}
  end
end
