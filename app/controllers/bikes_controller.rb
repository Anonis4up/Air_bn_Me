class BikesController < ApplicationController

def index
@bikes = Bike.all
end

def show
@bike = bike(params[:id])
end

end
