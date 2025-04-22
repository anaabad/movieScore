# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Movie, :all
    can :create, Movie, user: :admin
    can :delete, Movie, user: :admin

    can :read, Director, :all
    can :create, Director, user: :admin
    can :delete, Director, user: :admin

    can :read, Actor, :all
    can :create, Actor, user: :admin
    can :delete, Actor, user: :admin
  end
end
