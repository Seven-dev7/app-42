class MembershipsController < ApplicationController
  def index
  	@memberships = Membership.all
  end

  def new
  end

  def destroy
  end

  def create
  end
end
