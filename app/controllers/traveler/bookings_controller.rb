class Traveler::BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end


  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "cancelled"
    @booking.save
    redirect_to traveler_bookings_path
  end
end
