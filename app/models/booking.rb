class Booking < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :studio
  has_one :owner, through: :studio
  validates :start_on, presence: true
  # validates :start_on, :end_on, availability: true
  validate :end_on_after_start_on
  enum status: { pending: 0, approved: 10, rejected: 20 }

  private

  def end_on_after_start_on
    return if end_on.blank? || start_on.blank?

    if end_on < start_on
      errors.add(:end_on, "must be after the start on")
    end
  end
end
