class Review < ApplicationRecord
  belongs_to :bike

  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5 }
end
