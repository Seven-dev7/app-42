class HomeController < ApplicationController
  def index
  end

  def profil
  	@user = User.find_by(params[:id])
  end
end
