class Booking < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :studio
  has_one :owner, through: :studio
  validates :start_on, :end_on, uniqueness: true
end
