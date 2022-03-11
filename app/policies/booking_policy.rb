class BookingPolicy < ApplicationPolicy
  def create?
    user.present?
  end

  def destroy?
    record.customer == user
  end

  def approve?
    record.studio.owner == user
  end

  def reject?
    record.studio.owner == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
     def resolve
       scope.all
     end
  end
end
