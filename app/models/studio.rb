class Studio < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings
  has_one_attached :photo
  validates :name, :photo, :address, presence: true
  validates :details, length: {minimum: 5 }

  def unavailable_dates
    bookings.pluck(:start_on, :end_on).map do |range|
      { from: range[0], to: range[1] }
    end
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
