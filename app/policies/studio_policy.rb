class StudioPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  def update?
    record.owner == user
  end

  def destroy?
    record.owner == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
