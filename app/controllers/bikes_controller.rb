class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]

def index
  @bikes = Bike.all
  @markers = @bikes.geocoded.map do |bike|
    {
      lat: bike.latitude,
      lng: bike.longitude
    }
  end
end

def show
  @bike = Bike.find(params[:id])
  @reservation = Reservation.new
end

def new
  @bike=Bike.new
end

def create
  @bike=current_user.bikes.build(bike_params)

  if @bike.save
    redirect_to bikes_path, notice: "Votre wagon est ajouté"
  else
    render :new
  end
end

private
def bike_params

  params.require(:bike).permit(:brand, :category, :price_per_day, :location, :photo)
end
end
