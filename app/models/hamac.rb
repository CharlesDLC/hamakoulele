class Hamac < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :description, presence: true
   # validates :picture, presence: true
  validates :price, presence: true
  validates :address, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
