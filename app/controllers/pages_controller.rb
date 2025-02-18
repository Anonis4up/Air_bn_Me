class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show]

  def home
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
    @reservation = Reservation.new

    @markers = [{
      lat: @bike.latitude,
      lng: @bike.longitude
    }]
  end
end
