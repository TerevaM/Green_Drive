class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :model, presence: true
  validates :user, presence: true
  validates :availability, presence: true
  validates :brand, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
