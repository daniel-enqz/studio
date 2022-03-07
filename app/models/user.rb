class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :studios # studios.user_id
  # has_many :owned_studios, foreign_key: :owner_id # OwnedStudios
  has_many :owned_studios, foreign_key: :owner_id, class_name: "Studio" # OwnedStudios
  has_many :customer_bookings, foreign_key: :customer_id, class_name: "Booking"
  has_many :booked_studios, through: :customer_bookings, source: :studio
end
