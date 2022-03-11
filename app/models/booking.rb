class Booking < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :studio
  has_one :owner, through: :studio
  validates :start_on, :end_on, presence: true, uniqueness: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_on.blank? || start_on.blank?

    if end_on < start_on
      errors.add(:end_on, "must be after the start on")
    end
  end
end
