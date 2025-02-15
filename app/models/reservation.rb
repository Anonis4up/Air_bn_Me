class Reservation < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :start_date, :end_date, presence: true
  # validate :end_date_after_start_date
end
