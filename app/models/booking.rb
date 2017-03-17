class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hamac
  validates :status, inclusion: { in: ["cancelled", "pending", "accepted", "refused"], allow_nil: false }
end
