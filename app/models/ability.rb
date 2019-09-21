# frozen_string_literal: true

# 権限定義
class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.admin?

    can :manage, :all
  end
end
