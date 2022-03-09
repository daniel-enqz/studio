class User::DashboardPolicy < ApplicationPolicy
  # record user
  def show?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
