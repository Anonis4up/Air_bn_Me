class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bike, only: :create

  def index
    @reservation = current_user.reservations
    @reservations = @reservation.all
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @reservation = Reservation.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.bike = @bike

    if @reservation.save

      total_price = @reservation.total_price
      redirect_to reservations_path, notice: "Réservation réussie. Prix total : #{total_price} €"
    else
      render "bikes/show"
    end
  end

  #   def create
  #   @reservation=current_user.reservations.build(reservation_params)
  #   @reservation.bike=@bike

  #   if @reservation.start_date > @reservation.end_date
  # raise
  # flash[:alert] = "La date de fin ne peut pas être avant la date de début"
  #     render :new
  #   else

  #   if @reservation.save
  #     redirect_to reservations_path, notice: "Votre réservation est effectuée"
  #   else
  #     render "bikes/show", notice: "Votre réservation n'a pas pu être effectuée"
  #   end
  # end
  # end

  private

    def set_bike
      @bike = Bike.find(params[:bike_id])
    end

    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date)
    end
end
