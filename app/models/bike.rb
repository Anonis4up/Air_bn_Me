class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :bookmarks

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode

  validates :brand, :price_per_day, :location, presence: true

  def address
    user&.address
  end

  def total_days
    (end_date - start_date).to_i + 1
  end

  def total_price
    total_days * bike.price_per_day
  end
end
