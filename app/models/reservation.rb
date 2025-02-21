class Reservation < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validate :check_reservation_conflict
  # validate :end_date_after_start_date

  def total_days
    (end_date - start_date).to_i + 1
  end

  def total_price
    total_days * bike.price_per_day
  end

    private

    def check_reservation_conflict
      conflicts = Reservation.where(bike_id: bike_id)
                              .where.not(id: id)
                              .where("start_date < ? AND end_date > ?", end_date, start_date)

      if conflicts.exists?
        errors.add(:base, "Période déjà réservée")
      end
  end
end
