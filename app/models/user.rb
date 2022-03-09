class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # OWNER
  has_many :owned_studios, foreign_key: :owner_id, class_name: "Studio" # OwnedStudios
  # OWNER
  has_many :owner_bookings, through: :owned_studios, source: :bookings

  # CUSTOMER
  has_many :customer_bookings, foreign_key: :customer_id, class_name: "Booking"
  # CUSTOMER
  has_many :booked_studios, through: :customer_bookings, source: :studio

  def full_name
    if [first_name.blank?, last_name.blank?].all?
      "Anonymous User"
    else
      "#{first_name} #{last_name}".strip
    end
  end
end
