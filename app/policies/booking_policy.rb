class BookingPolicy < ApplicationPolicy
  def create?
    user.present?
  end

  def destroy?
    record.customer == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
     def resolve
       scope.all
     end
  end
end
