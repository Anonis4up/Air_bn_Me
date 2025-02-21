class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bike, only: [:create, :new]

  def index
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.bike = @bike

    if @reservation.save
      total_price = @reservation.total_price

      redirect_to reservations_path, notice: "Réservation réussie. Prix total : #{total_price.to_i} €"

    else
      flash[:notice] = "Période indisponible"
      redirect_to bike_reservations_path
    end

  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def reservation_params
    params.require(:reservation).permit(:bike_id, :start_date, :end_date)
  end
end
