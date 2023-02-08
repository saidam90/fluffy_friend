class Review < ApplicationRecord
  belongs_to :pet

  validates :rating, presence: true
  validates :comment, presence: true
end
