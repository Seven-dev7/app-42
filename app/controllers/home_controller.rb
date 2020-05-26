class HomeController < ApplicationController
  def index
  end

  def profil
  	@users = User.find_by(params[:id])
  end
end
