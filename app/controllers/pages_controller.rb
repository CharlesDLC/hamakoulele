class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @hamacs = Hamac.all.shuffle[0..5]
  end

  def login

  end
end
