class Pet < ApplicationRecord
  has_many :bookings
  belongs_to :user

  # validates :category, presence: true
  # validates :breed, presence: true
  # validates :name, presence: true
  # validates :age, presence: true
  # validates :location, presence: true
  # validates :photo, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
