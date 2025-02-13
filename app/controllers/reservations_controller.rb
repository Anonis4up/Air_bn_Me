class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bike, only: :create

  def index
    @resservations=current_user.reservations
  end

  def create
    @reservation=current_user.reservations.build(reservation_params)
    @reservation.bike=@bike

    if @reservation.save
      redirect_to reservations_path, notice: "Votre réservation est effectuée"
    else
      render "bikes/show", notice: "Votre réservation n'a pas pu être effectuée"
    end
  end

  private

    def set_bike
      @bike=Bike.find(params[:bike_id])
    end

    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date)
    end

end
