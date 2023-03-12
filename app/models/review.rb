class Review < ApplicationRecord
  belongs_to :pet

  validates :rating, :inclusion => 1..5
  validates :comment, presence: true
end
