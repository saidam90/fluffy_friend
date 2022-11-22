class Pet < ApplicationRecord
  belongs_to :user

  validates :category, presence: true
  validates :breed, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :location, presence: true
  # validates :photo, presence: true
end
