class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  validates :brand, :price_per_day, :location, presence: true
end
