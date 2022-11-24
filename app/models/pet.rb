class Pet < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo

  validates :category, presence: true
  validates :breed, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :location, presence: true
  # validates :photo, presence: true
end
