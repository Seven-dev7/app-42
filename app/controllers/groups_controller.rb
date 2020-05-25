class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: %i[update edit destroy show create_membership]
  authorize_resource
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def show
  end

  def create
    group = Group.create(group_params)
    flash[:primary] = "Groupe Créer"
    redirect_to group_path(group.id)
  end

  def edit
  end

  def update
    if @group.update(group_params)
      flash[:success] = "Vous avez bien modifié le Groupe"
      redirect_to group_path
    else
      render 'edit'
    end
  end

  def destroy
    @group.destroy
    flash[:danger] = "Vous avez bien supprimer le Groupe"
    redirect_to groups_path
  end

  def create_membership
    Membership.create!(user_id: params[:user_id], group_id: params[:group_id])
    flash[:success] = "Vous avez bien rejoins le Groupe"
    redirect_to group_path(params[:group_id])
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:title, :description, :user_id, :group_id)
  end
end

