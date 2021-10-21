class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true },
  inclusion: { in: 0..5, message: 'Rating must be a number between 1 and 5' }
end
