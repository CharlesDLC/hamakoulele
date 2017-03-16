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
  end
end
