class Review < ApplicationRecord
  belongs_to :restaurant
  # A review must have content and a rating. The rating should be a number between 0 and 5.
  validates :content, :rating, presence: true
  validates :rating, numericality: true, inclusion: { in: 0..5 }
end
