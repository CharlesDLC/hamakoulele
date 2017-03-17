class Owner::BookingsController < ApplicationController

  def index
    @booked_hamacs_owner = current_user.bookings_as_owner
  end
end
