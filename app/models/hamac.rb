class Hamac < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :description, presence: true
  # validates :picture, presence: true
  validates :price, presence: true
  validates :address, presence: true
end
