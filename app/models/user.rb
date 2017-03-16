class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :hamacs
  has_many :bookings_as_owner, through: :hamacs, source: :bookings
  has_many :bookings
  validates :email, presence: true, uniqueness: true
  mount_uploader :picture, ProfilePictureUploader
end





