class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role.include?("Owner")
      can :manage, :all
      can :access, :rails_admin
    end
  end
end
