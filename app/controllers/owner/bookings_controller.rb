class Owner::BookingsController < ApplicationController

  def index
    @bookings_for_owner = current_user.bookings_as_owner
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save!
    redirect_to owner_bookings_path
  end

  def refuse
    @booking = Booking.find(params[:id])
    @booking.status = "refused"
    @booking.save!
    redirect_to owner_bookings_path
  end

end
