class Owner::HamacsController < ApplicationController

  def index
    @pending_hamacs = current_users.hamacs.where { booking.status == "pending"}
    @booking_user = current_users.where { user.hamac = hamac }
    @booked_hamacs = current_users.hamacs.where { booking.status == "accepted"}
    @other_hamacs = current_users.hamacs.where { disponibility == true }
  end

  def new
    @hamac = Hamac.new
  end

  def create
    @hamac = Hamac.new(hamac_params)
  end

  def show
    @hamac = Hamac.find(params[:id])

  end

  def edit
    @hamac =
  end

  def update
  end

  def destroy
  end

  private

  def hamac_params
    params.require(:hamac).permit(:name, :description, :photo, :price, :disponibility, :address)
  end
end
