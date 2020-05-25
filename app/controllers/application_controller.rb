class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'Accés Interdit' }
      format.html { redirect_to root_path, notice: exception.message }
      format.js   { head :forbidden, content_type: 'Accés Interdit' }
    end
  end
end
