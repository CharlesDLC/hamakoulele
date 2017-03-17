class Owner::BookingsController < ApplicationController

  def index
    @pending_requests_for_owner = current_user.bookings_as_owner
  end
end
