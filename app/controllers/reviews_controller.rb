class ReviewsController < ApplicationController

  def new
    @bike = Bike.find(params[:bike_id])
    @review = @bike.reviews.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @review = @bike.reviews.new(review_params)
    if @review.save
      redirect_to @bike, notice: "Avis ajouté avec succès !"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :user_name, :rating)
  end
end
