class Review < ApplicationRecord
  belongs_to :pet, dependent: :destroy

  validates :rating, :inclusion => 1..5
  validates :comment, presence: true
end
