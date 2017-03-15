class HamacsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def index
    @hamacs = Hamac.all
  end

  def show
    @hamac = Hamac.find(params[:id])
  end
end
