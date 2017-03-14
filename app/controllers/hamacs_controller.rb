class HamacsController < ApplicationController
  def index
    @hamacs = Hamac.all
  end
end
