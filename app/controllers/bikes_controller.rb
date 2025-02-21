class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bike, only: [:show, :destroy]
  before_action :check_owner, only: [:destroy]

  def index
    @bikes = Bike.all

    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { bike: bike }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @reservation = Reservation.new

    @markers = [{
      lat: @bike.latitude,
      lng: @bike.longitude
    }]
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = current_user.bikes.build(bike_params)

    if @bike.save
      redirect_to bikes_path, notice: "Votre wagon est ajouté"
    else
      render :new
    end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path, notice: 'Le wagon et ses avis ont été supprimés.'
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def check_owner

    unless current_user == @bike.user
      redirect_to bikes_path, alert: "Vous n'êtes pas autorisé à supprimer ce wagon"
    end
  end

  def bike_params
    params.require(:bike).permit(:brand, :category, :price_per_day, :location, :photo)
  end
end
