class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]

def index
  @bikes = Bike.all

  @markers = @bikes.geocoded.map do |bike|
    {
      lat: bike.latitude,
      lng: bike.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {bike: bike}),
      marker_html: render_to_string(partial: "marker")
    }
  end
end

def show
  @bike = Bike.find(params[:id])
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

  uploaded_file = params[:bike][:poster_url]

if uploaded_file
  result = Cloudinary::Uploader.upload(uploaded_file.path)
@bike.poster_url = result['secure_url']
end

  if @bike.save
    redirect_to bikes_path, notice: "Votre wagon est ajouté"
  else
    render :new
  end
end

private

  def bike_params
    params.require(:bike).permit(:brand, :category, :price_per_day, :location, :poster_url)
  end
end
