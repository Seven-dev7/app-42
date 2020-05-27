class HomeController < ApplicationController
  def index
  end

  def profil
  	@user = User.find(current_user.id)
  end
end
