class Owner::BookingsController < ApplicationController

  def index
    @bookings = Booking.all.where { }
  end
end
