class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hamac
  validates :bookings, inclusion: { in: ["cancelled", "pending", "accepted", "refused"], allow_nil: false }
end
