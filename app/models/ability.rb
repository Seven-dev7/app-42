# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    alias_action :show, :index, to: :read
    alias_action :create, :read, :update, :destroy, :create_membership, to: :crud

    can :read, Post
    can [:read, :create_membership], Group

    if user.present?
      can :crud, Post, user_id: user.id
      can :crud, Group, user_id: user.id
    end
  end
end
