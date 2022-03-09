class BookingPolicy < ApplicationPolicy
  def new?
    user.present?
  end

  def create?
    user.present?
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
     def resolve
       scope.all
     end
  end
end
