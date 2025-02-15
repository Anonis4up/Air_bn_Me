class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  def address
    user&.address
  end

  geocoded_by :address
  after_validation :geocode

  validates :brand, :price_per_day, :location, presence: true
end
