class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hamac
  validates :status, inclusion: { in: ["cancelled", "pending", "accepted", "refused"], allow_nil: false }

  def cancel

  end

  def confirm
  end

  def refuse
  end

end
