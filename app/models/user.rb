class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pets, dependent: :destroy
  has_many :bookings, dependent: :destroy

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  # validates :email, uniqueness: true
  # validates :email, format: { with: /\A.*@.*\..*\z/ }
  # validates :owner, inclusion: { in: [true, false] }
end
