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
      redirect_to reservations_path
    else
      flash[:notice] = "Période indisponible"
      render "bikes/show"
    end
  end

  private

  def reservation_conflict?
    existing_reservation = Reservation.where(bike_id: @bike.id)
                                      .where.not(id: @reservation.id)
                                      .where("start_date < ? AND end_date > ?", @reservation.end_date, @reservation.start_date)
    existing_reservation.exists?
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def reservation_params
    params.require(:reservation).permit(:bike_id, :start_date, :end_date)
  end
end
