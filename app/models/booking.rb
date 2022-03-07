class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :studio
  has_one :owner, through: :studio
end
