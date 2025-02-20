class Reservation < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :start_date, :end_date, presence: true
  # validate :end_date_after_start_date

  def total_days
    (end_date - start_date).to_i + 1
  end

  def total_price
    total_days * bike.price_per_day
  end
end
