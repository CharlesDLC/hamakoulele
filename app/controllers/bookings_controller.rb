class BookingsController < ApplicationController
  before_action :authenticate_user!
  def create
    @booking = Booking.new(hamac_id: params[:hamac_id], user: current_user, status: "pending")
    @booking.save
    redirect_to traveler_bookings_path
  end



end
