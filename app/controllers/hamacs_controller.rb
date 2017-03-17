class HamacsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    if params[:search] != nil
      @hamacs = Hamac.where( "address ILike ?",  "%#{params[:search]}%").where.not(user: current_user)
    else
      @hamacs = Hamac.where.not(user: current_user)
    end
    # @hamacs = Hamac.where.not(latitude: nil, longitude: nil)

    # @hash = Gmaps4rails.build_markers(@flats) do |hamac, marker|
    #   marker.lat hamac.latitude
    #   marker.lng hamac.longitude
    #   # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    # end
  end

  def show
    @hamac = Hamac.find(params[:id])
    @hamac_coordinates = [{ lat: @hamac.latitude, lng: @hamac.longitude }]
    # binding.pry
  end
end
