class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  validates :content, presence: true
end
