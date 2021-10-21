class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion:
    { in: %w[chinese italian japanese french belgian],
      message: 'Category must be one of these: chinese, italian, japanese, french or belgian' }
end
