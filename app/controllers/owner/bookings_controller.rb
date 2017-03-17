class Owner::BookingsController < ApplicationController

  def index
    @bookings_for_owner = current_user.bookings_as_owner

  end
end
