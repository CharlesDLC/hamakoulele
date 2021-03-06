class Owner::HamacsController < ApplicationController

  def index
    @hamacs = current_user.hamacs
  end

  def new
    @hamac = Hamac.new
  end

  def create
    @hamac = Hamac.new(hamac_params)
    @hamac.user = current_user
    if @hamac.save
      redirect_to owner_hamacs_path
    else
      render :new
    end
  end

  def show
    @hamac = Hamac.find(params[:id])
  end

  def edit
    @hamac = Hamac.find(params[:id])
  end

  def update
    @hamac.update(hamac_params)
    redirect_to owner_hamac_path(@hamac)
  end

  def destroy
    @hamac.destroy
    redirect_to owner_hamacs_path
  end

  def self.search(search)
    where()
  end

private

  def hamac_params
    params.require(:hamac).permit(:name, :description, :photo, :photo_cache, :price, :disponibility, :address)
  end
end
