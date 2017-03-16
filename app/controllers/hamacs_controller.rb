class HamacsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    if params[:search] != nil
      @hamacs = Hamac.where(name: params[:search])
    else
      @hamacs = Hamac.all
    end
  end

  def show
    @hamac = Hamac.find(params[:id])
    @alert_message = "You are viewing #{@hamac.name}"
    @hamac_coordinates = { lat: @hamac.latitude, lng: @hamac.longitude }
  end
end
