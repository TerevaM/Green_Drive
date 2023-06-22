class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos

  validates :model, presence: true
  validates :brand, presence: true
  validates :description, presence: true

  def self.ransackable_attributes(_ = nil)
    %w[location start_date end_date]
  end
end
