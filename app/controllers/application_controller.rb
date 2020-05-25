class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
  	redirect_back fallback_location: { action: "show"}, :alert => "Accés Interdit"
  end
end
